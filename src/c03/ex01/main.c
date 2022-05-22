
#include <stdio.h>

int ft_strncmp(char *s1, char *s2, unsigned int n);

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

	ret = ft_strncmp("123", "123", 5);
	printf("%d\n", simple_ret(ret));

	ret = ft_strncmp("1234", "123", 5);
	printf("%d\n", simple_ret(ret));

	ret = ft_strncmp("1234", "123", 3);
	printf("%d\n", simple_ret(ret));

	ret = ft_strncmp("123", "123", 0);
	printf("%d\n", simple_ret(ret));

	ret = ft_strncmp("", "123", 5);
	printf("%d\n", simple_ret(ret));

	return (0);
}
