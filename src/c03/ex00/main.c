
#include <stdio.h>

int ft_strcmp(char *s1, char *s2);

int	main()
{
	int ret = 0;

	ret = ft_strcmp("123", "123");
	printf("%d\n", ret);
	ret = ft_strcmp("1234", "123");
	printf("%d\n", ret);
	ret = ft_strcmp("", "123");
	printf("%d\n", ret);

	return (0);
}
