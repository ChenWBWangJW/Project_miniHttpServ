#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>
#include <ctype.h>
#include <arpa/inet.h>
#include <errno.h>

#define SERV_IP "192.168.222.3"

#define SERV_PORT 66

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
	server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	
	ret = bind(sock, (struct sockaddr *)&server_addr, sizeof(server_addr));
	if(ret == -1)
		{
		perror_exit("bind");
		}
		

	ret = listen(sock, 128);
	if (ret == -1)
		{
		perror_exit("listen");
		}

	printf("等待建立连接，端口号66\n");

	int done = 1;

	while(done)
	{
		struct sockaddr_in client;
		int client_sock, read_len = 1, write_len, count = 5;
		char client_ip[64];
		char buf[128];

		socklen_t client_addr_len;
		client_addr_len = sizeof(client);

		client_sock = accept(sock, (struct sockaddr *)&client, &client_addr_len);
		if (client_sock == -1)
			{
			perror_exit("eccept");
			}

		printf("Client IP :%s\nPort :%d\n", inet_ntop(AF_INET, &client.sin_addr.s_addr, client_ip, sizeof(client_ip)), ntohs(client.sin_port)); 

		do
		{	
			read_len = read(client_sock, buf, sizeof(buf)-1);
			buf[read_len] = '\0';
			printf("Recived: %s, read_len: %u\n", buf, read_len);
			if(read_len == 0)
				break;

			printf("please type for send: ");	
			fgets(buf, 128, stdin);
			
			write_len = write(client_sock, buf, strlen(buf));
			printf("Write finished,waitting for message......\n");
		}while(read_len);

		printf("Connect break");
		close(client_sock);
	}
	return 0;
}
