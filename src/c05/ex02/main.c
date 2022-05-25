
#include <stdio.h>

int ft_iterative_power(int nb, int power);

int	main(void)
{
	printf("%d ", ft_iterative_power(2, 2));
	printf("%d ", ft_iterative_power(2, 1));
	printf("%d ", ft_iterative_power(2, 0));
	printf("%d ", ft_iterative_power(2, 30));
	printf("%d ", ft_iterative_power(2, -1));
	printf("%d ", ft_iterative_power(2, -2147483648));
	printf("%d ", ft_iterative_power(0, 0));
}