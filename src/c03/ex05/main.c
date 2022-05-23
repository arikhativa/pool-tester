
#include <stdio.h>

unsigned int ft_strlcat(char *dest, char *src, unsigned int size);
size_t strlcat(char * restrict dst, const char * restrict src, size_t dstsize);
size_t strlen(const char *s);

int	main()
{
	char s[] = "123";
	char d[7] = "a";
	char s2[] = "123";
	char d2[] = "abc";
	char s3[] = "aaaaaaaaaa"; // len is 10
	char d3[] = "0123456789--";
	char s4[] = "src"; 
	char d4[] = "dest";
	char s5[] = "very biggg dfgdfgdfgdfgdfgdfgdfgfdgfd"; 
	char d5[10] = "dest";
	char s6[] = ""; 
	char d6[10] = "dest";
	char s7[] = "123"; 
	char d7[2] = "";
	unsigned int ret = 0;

	// size > strlen(d)
	ret = ft_strlcat(d, s, 7);
	// ret = strlcat(d, s, 7);
	printf("%d\n", ret);
	printf("%s\n", s);
	printf("%s\n", d);

	// size == 0
	ret = ft_strlcat(d2, s2, 0);
	// ret = strlcat(d2, s2, 0);
	printf("%d\n", ret);
	printf("%s\n", s2);
	printf("%s\n", d2);

	// size < strlen(d)
	ret = ft_strlcat(d3, s3, 6);
	// ret = strlcat(d3, s3, 6);
	printf("%d\n", ret);
	printf("%s\n", s3);
	printf("%s\n", d3);

	// size == strlen(d)
	ret = ft_strlcat(d4, s4, strlen(d4));
	// ret = strlcat(d4, s4, strlen(d4));
	printf("%d\n", ret);
	printf("%s\n", s4);
	printf("%s\n", d4);

	// size > strlen(d) && strlen(src)
	ret = ft_strlcat(d5, s5, 10);
	// ret = strlcat(d5, s5, 10);
	printf("%d\n", ret);
	printf("%s\n", s5);
	printf("%s\n", d5);

	// strlen(src) == 0
	ret = ft_strlcat(d6, s6, 10);
	// ret = strlcat(d6, s6, 10);
	printf("%d\n", ret);
	printf("%s\n", s6);
	printf("%s\n", d6);

	// strlen(dest) == 0
	ret = ft_strlcat(d7, s7, 2);
	// ret = strlcat(d7, s7, 2);
	printf("%d\n", ret);
	printf("%s\n", s7);
	printf("%s\n", d7);

	return (0);
}
