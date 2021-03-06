
#include <stdio.h>

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
	char s[] = "123";
	char d[7] = "abc";
	char *ret;
	int is_same = 1;

	ret = ft_strcat(d, s);
	printf("%s\n", ret);
	is_same = (unsigned long)(ret) == (unsigned long)(d);
	if (!is_same)
		printf("user didn't return dest\n");

	return (0);
}
