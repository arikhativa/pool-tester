
#include <stdio.h>


#include <stdio.h>

int ft_str_is_alpha(char *str);

int	main()
{
	char *s1 = "string";
	char *s2 = "string2";
	char *s3 = "";
	char s4[] = {1, 92, 64, 30, '\0'};
	int ret;

	ret = ft_str_is_alpha(s1);
	printf("%d\n", ret);
	ret = ft_str_is_alpha(s2);
	printf("%d\n", ret);
	ret = ft_str_is_alpha(s3);
	printf("%d\n", ret);
	ret = ft_str_is_alpha(s4);
	printf("%d\n", ret);

	return (0);
}
