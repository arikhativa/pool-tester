
#include <stdio.h>

int ft_strcmp(char *s1, char *s2);

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
	int ret = 0;

	ret = ft_strcmp("123", "123");
	printf("%d\n", simple_ret(ret));
	ret = ft_strcmp("1234", "123");
	printf("%d\n", simple_ret(ret));
	ret = ft_strcmp("", "123");
	printf("%d\n", simple_ret(ret));

	return (0);
}
