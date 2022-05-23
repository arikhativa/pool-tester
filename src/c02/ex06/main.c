
#include <stdio.h>

int ft_str_is_printable(char *str);

int	main()
{
	char *s1 = " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~";
	char s2[] = {'!', 2, '\0'};
	char *s3 = "";
	char s4[] = {1, 92, 64, 30, '\0'};
	int ret;

	ret = ft_str_is_printable(s1);
	printf("%d\n", ret);
	ret = ft_str_is_printable(s2);
	printf("%d\n", ret);
	ret = ft_str_is_printable(s3);
	printf("%d\n", ret);
	ret = ft_str_is_printable(s4);
	printf("%d\n", ret);

	return (0);
}
