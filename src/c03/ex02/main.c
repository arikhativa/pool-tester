
#include <stdio.h>

char * strcat(char *restrict s1, const char *restrict s2);

char *ft_strcat(char *dest, char *src);

int	simple_ret(int	ret)
{
	if (ret > 0)
		return 1;
	if (ret < 0)
		return -1;
	return 0;
}

int	main()
{
	TODO bad bad
	// char s[] = "123";
	// char d[] = "abcde";
	// char *ret;
	// int is_same = 1;

	// ret = strcat(d, s);
	// printf("%s\n", ret);
	// printf("%c\n", d[4]);
	// is_same = (unsigned long)(ret) == (unsigned long)(d);
	// if (!is_same)
	// 	printf("user didn't return dest\n");

	// return (0);
}
