
#include <stdio.h>

int ft_str_is_lowercase(char *str);

int	main()
{
	char *s1 = "abcdefghijklmnopqrstuvwxyz";
	char *s2 = "abcdefghijklmnopqrstuvwxyzAA";
	char *s3 = "";
	char s4[] = {1, 92, 64, 30, '\0'};
	int ret;

	ret = ft_str_is_lowercase(s1);
	printf("%d\n", ret);
	ret = ft_str_is_lowercase(s2);
	printf("%d\n", ret);
	ret = ft_str_is_lowercase(s3);
	printf("%d\n", ret);
	ret = ft_str_is_lowercase(s4);
	printf("%d\n", ret);

	return (0);
}
