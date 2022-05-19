
#include <stdio.h>

int ft_str_is_numeric(char *str);

int	main()
{
	char *s1 = "12345";
	char *s2 = "123s";
	char *s3 = "";
	char s4[] = {1, 92, 64, 30, '\0'};
	int ret;

	ret = ft_str_is_numeric(s1);
	printf("%d\n", ret);
	ret = ft_str_is_numeric(s2);
	printf("%d\n", ret);
	ret = ft_str_is_numeric(s3);
	printf("%d\n", ret);
	ret = ft_str_is_numeric(s4);
	printf("%d\n", ret);

	return (0);
}
