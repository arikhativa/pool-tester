
#include <stdio.h>
#include <stdlib.h>

int	ft_atoi(char *str);

int	main(void)
{
	printf("%d ", ft_atoi(" ---+--+1234ab567"));
	printf("%d ", ft_atoi("0"));
	printf("%d ", ft_atoi("-2147483648"));
	printf("%d", ft_atoi("2147483647"));
	return (0);
}