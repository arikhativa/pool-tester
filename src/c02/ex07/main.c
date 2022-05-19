
#include <stdio.h>

char *ft_strupcase(char *str);

int	main()
{
	char s1[] = {'a', 'b', 'c', 0};
	char s2[] = {'1', '2', '3', 0};
	char s3[] = {'X', 'X', 'c', 0};
	char s4[] = {0};

	char *ret;

	ret = ft_strupcase(s1);
	printf("%s-%s\n", ret, s1);
	ret = ft_strupcase(s2);
	printf("%s-%s\n", ret, s2);
	ret = ft_strupcase(s3);
	printf("%s-%s\n", ret, s3);
	ret = ft_strupcase(s4);
	printf("%s-%s\n", ret, s4);

	return (0);
}
