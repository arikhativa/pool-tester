
#include <stdio.h>

int ft_str_is_uppercase(char *str);

int	main()
{
	char *s1 = "ABCDEFGHIJKLMNOPQRSTUIWXYZ";
	char *s2 = "ABCDEFGHIJKLMNOPQRSTUIWXYZaa";
	char *s3 = "";
	char s4[] = {1, 92, 64, 30, '\0'};
	int ret;

	ret = ft_str_is_uppercase(s1);
	printf("%d\n", ret);
	ret = ft_str_is_uppercase(s2);
	printf("%d\n", ret);
	ret = ft_str_is_uppercase(s3);
	printf("%d\n", ret);
	ret = ft_str_is_uppercase(s4);
	printf("%d\n", ret);

	return (0);
}
