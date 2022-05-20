
#include <stdio.h>

char *ft_strlowcase(char *str);

int	main()
{
	char s1[] = {'A', 'B', 'C', 0};
	char s2[] = {'1', '2', '3', 0};
	char s3[] = {'x', 'x', 'C', 0};
	char s4[] = {0};

	char *ret;

	ret = ft_strlowcase(s1);
	printf("%s-%s\n", ret, s1);
	ret = ft_strlowcase(s2);
	printf("%s-%s\n", ret, s2);
	ret = ft_strlowcase(s3);
	printf("%s-%s\n", ret, s3);
	ret = ft_strlowcase(s4);
	printf("%s-%s\n", ret, s4);

	return (0);
}
