#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>
#include <ctype.h>
#include <arpa/inet.h>
#include <errno.h>
#include <sys/stat.h>
#include <pthread.h>

//#define SERV_IP "192.168.222.3"

#define SERV_PORT 80
#define SIZE_OF_BUF 256
#define SIZE_OF_METHOD 64
#define SIZE_OF_URL 256
#define SIZE_OF_HTTP_VERSON 128
#define SIZE_OF_PATH 256

static int debug = 0;	//设置一个开关，项目实战经常怎么玩

//1.function
void * do_http_request(void* pclient_sock);
void do_http_response(int client_sock, const char * path);
int headers(int client_sock, FILE * resourse);
void cat(int client_sock, FILE * resourse);
int get_line(int sock, char *buf, int size);

在获取访问地址后的第二步，需要判断访问地址所访问地址�
��
��否为路径，文件是否存在，如果存在，则相应200OK，若�
�存
在，则响应404NOTFOUND

//2.error tacle
void not_found(int client_sock);	//404
void unimplemented(int client_sock); //501
void bad_request(int client_sock);	//400
void inner_error(int client_sock);	//internal error



perror_exit(const char * des)
{
	fprintf(stderr, "%s error, reason: %s\n", des, strerror(errno));
	exit(1);
}

int main(void)
{
	int sock;
	int i,ret;
	struct sockaddr_in server_addr;

	sock = socket(AF_INET, SOCK_STREAM, 0);
	if(sock == -1)
	{
		perror_exit("create socket");
	}
	
	bzero(&server_addr, sizeof(server_addr));

	server_addr.sin_family = AF_INET;
	server_addr.sin_port = htons(SERV_PORT);
	server_addr.sin_addr.s_addr = htonl(INADDR_ANY);   //可改为SERV_IP
	
	ret = bind(sock, (struct sockaddr *)&server_addr, sizeof(server_addr));
	if(ret == -1)
	{
		perror_exit("bind");
	}
		

	ret = listen(sock, 2048);
	if (ret == -1)
	{
		perror_exit("listen");
	}

	printf("等待客户端建立连接\n");

	int done = 1;

	while(done)
	{
		struct sockaddr_in client;
		int client_sock, len;
		char client_ip[64];
		char buf[SIZE_OF_BUF];

		int res;
		pthread_t id;
		pthread_attr_t thread_attr;
		int* pclient_sock = NULL;
		

		socklen_t client_addr_len;
		client_addr_len = sizeof(client);

		client_sock = accept(sock, (struct sockaddr *)&client, &client_addr_len);
		if (client_sock == -1)
		{
			perror_exit("accept");
		}

		printf("Client IP :%s\tPort :%d\n", inet_ntop(AF_INET, &client.sin_addr.s_addr, client_ip, sizeof(client_ip)), ntohs(client.sin_port)); 


		//启动线程处理http请求
		pclient_sock = (int *)malloc(sizeof(int));
		*pclient_sock = client_sock;

		res = pthread_attr_init(&thread_attr);
		if(res)
		{
			perror_exit("thread_init");
		}

		res = pthread_attr_setdetachstate(&thread_attr, PTHREAD_CREATE_DETACHED);	//设置分离模式
		if(res)
		{
			perror_exit("thread_setdetachstate");
		}

		res = pthread_create(&id, &thread_attr, do_http_request, pclient_sock);
		if(res)
		{
			perror_exit("detach_thread_create");
		}
	}
	pthread_exit(NULL);
	close(sock);
	return 0;
}


void * do_http_request(void* pclient_sock)
{
	int len = 0;
	char buf[SIZE_OF_BUF];
	char method[SIZE_OF_METHOD];
	char url[SIZE_OF_URL];
	char http_verson[SIZE_OF_HTTP_VERSON];
	char path[SIZE_OF_PATH];
	int client_sock = *(int*)pclient_sock;

	struct stat st;

	/* 读取客户端发送http请求 */


	//1.读取请求行

	len = get_line(client_sock, buf, sizeof(buf));

	if(len > 0)	//读到请求行GET
	{
		int i = 0, j = 0;
		
		while(!isspace(buf[j]) && (i < sizeof(method)-1))
		{
			method[i] = buf[j];
			i++;
			j++;
		}
		
		method[i] = '\0';
		if(debug) printf("Request method: %s\n", method);

		if(strncasecmp(method, "GET", i) == 0)	//比较后确认是GTE方法
		{ 
			if(debug) printf("Method = GET\n");	//只处理GET请求

			//获取url
			while(isspace(buf[j++])); //跳过空格
			i = 0;
			
			while(!isspace(buf[j]) && (i < sizeof(url)-1))
			{
				url[i] = buf[j];
				i++;
				j++;
			}

			url[i] = '\0';

			if(debug) printf("URL = %s\n", url);

			//获取http版本
			while(isspace(buf[j++])); //跳过空格
			i = 0;

			while(!isspace(buf[j]) && (i < sizeof(http_verson)-1))
			{
				http_verson[i] = buf[j];
				i++;
				j++;
			}

			http_verson[i] = '\0';

			if(debug) printf("Verson = %s\n", http_verson);

			//继续读取http头部GTET后剩余行
			do
			{
				len = get_line(client_sock, buf, sizeof(buf));
				if(debug) printf("read: %s\n", buf);
			}while (len > 0);

			//路径映射，定位服务器本地的html本地文件

			//处理url中的问号
			{
				char *pos = strchr(url, '?');	//单个字符对比替换方法，返回地址或0；
				if(pos)
				{
					*pos = '\0';
					printf("real url: %s\n", url);
				}
			}

			//格式化路径并将用户所需路径写入缓冲path内
			sprintf(path, "./html_docs/%s", url);
			if(debug) printf("path: %s\n", path);
			

			//执行http 响应客户端

			//判断文件是否存在，响应200 OK，同时发送响应的html文件，不存在响应404NOT FOUND
			if(stat(path, &st) == -1)	//成功返回0，文件不存在或出错，返回-1
			{
				fprintf(stderr, "stat %s failed. reason: %s\n", path, strerror(errno));
				not_found(client_sock);
			}else{	//文件存在
				if(S_ISDIR(st.st_mode))
				{
					strcat(path, "/index.html");
				}
				do_http_response(client_sock, path);
			}			
			
		}else	//非GET请求，读取所有HTTP头部并响应客户端501:sMethod Not Implemented
		{
			fprintf(stderr, "warning! other request[%s]\n", method);
			do
			{
				len = get_line(client_sock, buf, sizeof(buf));
				if(debug) printf("read: %s\n", buf);
				
			}while (len > 0);


			unimplemented(client_sock);	//请求未实现,500:unimplement
			
		}
	}else	//请求格式有问题，出错处理，响应客户端400:Bad Request
	{
		bad_request(client_sock);
	}
	close(client_sock);
	if(pclient_sock) free(pclient_sock);	//释放动态分配的内存
	return NULL;
}


/*void do_http_response(int client_sock)
{
	const char * main_header = "HTTP/1.0 200 OK\r\nServer: Chen Server\r\nContent-Type: text/html\r\nConnection: Close\r\n";

	const char * welcome_content = "\
<html lang=\"zh-CN\">\n\
<head>\n\
<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-Type\">\n\
<title>This is a test</title>\n\
<head>\n\
<body>\n\
<dir align=center height=\"500px\">\n\
<br/><br/><br/>\n\
<h2>请输入信息后登录使用 </h2><br/><br/>\n\
<form action=\"commit\" method=\"post\">\n\
尊姓大名: <input type=\"text\" name=\"name\" />\n\
<br/>芳龄几何: <input type=\"password\" name=\"age\" />\n\
<br/><br/><br/><input type=\"submit\" value=\"提交\" />\n\
<input type=\"reset\" value=\"重置\" />\n\
</form>\n\
</div>\n\
</body>\n\
</html>";

//1.发送main_head
	int len = write(client_sock, main_header, strlen(main_header));

	if(debug) fprintf(stdout, "...do_http_response...\n");
	if(debug) fprintf(stdout, "write[%d]: %s", len, main_header);


//2.生成Content_length 行并发生
	char send_buf[64];
	int wc_len = strlen(welcome_content);
	len = snprintf(send_buf, 64, "Content_length: %d\r\n\r\n", wc_len);	//snprintf返回字符串长度
	len = write(client_sock, send_buf, len);

	if(debug) fprintf(stdout, "write[%d]: %s", len, send_buf);

	len = write(client_sock, welcome_content, wc_len);

	if(debug) fprintf(stdout, "write[%d]: %s", len, welcome_content);


//3.发送html文件内容
}*/


void do_http_response(int client_sock, const char * path)
{
	int ret = 0;
	FILE * resource = NULL;
	resource = fopen(path, "r");

	if(resource == NULL)
	{
		not_found(client_sock);
		return;
	}

	//1.发送http头部
	ret = headers(client_sock, resource);

	//2.发送httpbody部分
	if(!ret)
	{
		cat(client_sock, resource);
	}
	
	fclose(resource);
}


/*************************************
 *返回关于响应文件信息的http头部
 *输入：
 *		client_sock - 客户端的sock句柄
 *		resourse	- 文件的句柄
 *返回值：成功返回0，失败返回-1
**************************************/
int headers(int client_sock, FILE * resource)
{
	struct stat st;
	int fileid = 0;
	char tmp[64];
	char buf[1024] = {0};
	strcpy(buf, "HTTP/1.0 200 OK\r\n");
	strcat(buf, "Server: Chen Server\r\n");
	strcat(buf, "Content-Type: text/html\r\n");
	strcat(buf, "Connection: Close\r\n");

	fileid = fileno(resource);

	if(fstat(fileid, &st) == -1)	//属于服务器内部出错
	{
		inner_error(client_sock);
		return -1;
	}

	snprintf(tmp, 64, "Content_Length: %ld\r\n\r\n", st.st_size);
	strcat(buf, tmp);

	if(debug) fprintf(stdout, "......Reply......\nHeader: %s\n", buf);

	if(send(client_sock, buf, strlen(buf), 0) < 0)
	{
		fprintf(stderr, "send failed. data: %s, reason: %s\n", buf, strerror(errno));
		return -1;
	}
	return 0;

}


/*******************************
 *说明：实现将html文件的内容按行
 		读取并发送给客户端
********************************/
void cat(int client_sock, FILE * resource)
{
	char buf[1024];

	fgets(buf, sizeof(buf), resource);

	while (!feof(resource))		//feof为文件结束代码
		{
		int len = write(client_sock, buf, strlen(buf));

		if(len < 0)		//发送body的过程中出现问题,1.重试
			{
			fprintf(stderr, "send body error. reason: %s\n", strerror(errno));
			break;
			}

		if(debug) fprintf(stdout, "%s", buf);

		fgets(buf, sizeof(buf), resource); 

		
		}
}


//return -1 表示读取出错，等于0表示读到空行，大于0表示读取字符数
int get_line(int sock, char * buf, int size)	//单个字符读取
{

	int count = 0;	//字符串读取计数
	char ch = '\0';	//ch字符作为读缓冲，正常字符写入buf，回车则停止并填入字符串结束符号'\0'
	int len = 0;	//读取成功为1，错误为0

	while (count < size-1 && ch != '\n')
	{
		len = read(sock, &ch, 1);

		if (len == 1)
		{
			if(ch == '\r')	//'\r'回车符忽略，continue跳出if大循环继续下一循环
			{
				continue;
			}else if(ch == '\n')	//'\n'换行符break结束循环
			{
				//buf[count] = '\0';
				break;
			}

		//处理一般字符
			buf[count] = ch;
			count++;
			
		}else if(len == -1)	//读取出错
		{
			perror("read failed");
			break;
		}else	//read返回0，意指客户端关闭sock连接
		{
			fprintf(stderr, "client close");
			count = -1;
			break;
		}
	}

	if (count >= 0)
	{
		buf[count] = '\0';
	}

	return count;
}


void not_found(int client_sock)
{
	const char * reply = "HTTP/1.0 404 NOT FOUND\r\n\
Content-Type: text/html\r\n\
\r\n\
<HTML lang=\"zh-CN\">\r\n\
<mate content=\"text/html; charset=utf-8\" http-equiv=\"content-Type\">\r\n\
<HEAD>\r\n\
<TITLE>NOT FOUND</TITLE>\r\n\
</HEAD>\r\n\
<BODY>\r\n\
	<P>File is inexistent!\r\n\
	<P>The server could not fulfill your request because the resource specified is unavaliable or nonexistent.\r\n\
</BODY/>\r\n\
</HTML>";

	int len = write(client_sock, reply, strlen(reply));
	if(debug) fprintf(stdout, reply);

	if(len <= 0)
	{
		fprintf(stderr, "send reply faild. reason: %s\n", strerror(errno));
	}
}


void unimplemented(int client_sock)
{
	const char * reply = "HTTP/1.0 501 Method Not Implemented\r\n\
Content-Type: text/html\r\n\
\r\n\
<HTML lang=\"zh-CN\">\r\n\
<mate content=\"text/html; charset=utf-8\" http-equiv=\"content-Type\">\r\n\
<HEAD>\r\n\
<TITLE>Method Not Implemented</TITLE>\r\n\
</HEAD>\r\n\
<BODY>\r\n\
	<P>HTTP request method not supported.\r\n\
</BODY/>\r\n\
</HTML>";

	int len = write(client_sock, reply, strlen(reply));
	if(debug) fprintf(stdout, reply);

	if(len <= 0)
	{
		fprintf(stderr, "send reply faild. reason: %s\n", strerror(errno));
	}
}


void bad_request(int client_sock)
{
	const char * reply = "HTTP/1.0 400 BAD REQUEST\r\n\
Content-Type: text/html\r\n\
\r\n\
<HTML lang=\"zh-CN\">\r\n\
<mate content=\"text/html; charset=utf-8\" http-equiv=\"content-Type\">\r\n\
<HEAD>\r\n\
<TITLE>BAD REQUEST</TITLE>\r\n\
</HEAD>\r\n\
<BODY>\r\n\
	<P>your browser sent a bad request.\r\n\
</BODY/>\r\n\
</HTML>";

	int len = write(client_sock, reply, strlen(reply));
	if(debug) fprintf(stdout, reply);

	if(len <= 0)
	{
		fprintf(stderr, "send reply faild. reason: %s\n", strerror(errno));
	}
}


void inner_error(int client_sock)
{
	const char * reply = "HTTP/1.0 500 NOT Internal Server Error\r\n\
Content-Type: text/html\r\n\
\r\n\
<HTML>\r\n\
<HEAD>\r\n\
<TITLE>Inner Error</TITLE>\r\n\
</HEAD>\r\n\
<BODY>\r\n\
	<P>Server Inner Error\r\n\
	<P>The server internal Error\r\n\
</BODY/>\r\n\
</HTML>";
	
	int len = write(client_sock, reply, strlen(reply));
	if(debug) fprintf(stdout, reply);

	if(len <= 0)
	{
		fprintf(stderr, "server internal error. reason: %s\n", strerror(errno));
	}
}
