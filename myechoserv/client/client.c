#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <errno.h>

#define SERV_PORT 66
#define SERV_IP "192.168.222.3"

int main(int argc, char *argv[])
{
	int sockfd;
	char *message;
	struct sockaddr_in servaddr;
	int read_len, write_len, count = 1;
	char buf[128];

	if(argc != 2)
	{
		fputs("Usage:./echo_client message\n", stderr);
		exit(1);
	}

	message = argv[1];

	printf("message: %s\n", message);

	sockfd = socket(AF_INET, SOCK_STREAM, 0);

	memset(&servaddr, '\0', sizeof(struct sockaddr_in));

	servaddr.sin_family = AF_INET;

	inet_pton(AF_INET, SERV_IP, &servaddr.sin_addr.s_addr);
	servaddr.sin_port = htons(SERV_PORT);

	connect(sockfd, (struct sockaddr *)&servaddr, sizeof(servaddr));

	write(sockfd, message, strlen(message));

	do
	{	
		read_len = read(sockfd, buf, sizeof(buf)-1);
		buf[read_len] = '\0';

		printf("Recived: %splease type for send: ", buf);
	
		fgets(buf, 128, stdin);

		write_len = write(sockfd, buf, strlen(buf));
		if(write_len > 0)
		{
			printf("Send success,waitting for message......\n");
		}else
		{
			perror("Write error");
		}
	}while(read_len);

	printf("finished.\n");
	close(sockfd);

	return 0;
}
