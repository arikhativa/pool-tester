
#include <stdio.h>

int ft_find_next_prime(int nb);

int	main(void)
{
	printf("%d ", ft_find_next_prime(-2147483648));
	printf("%d ", ft_find_next_prime(0));
	printf("%d ", ft_find_next_prime(1));
	printf("%d ", ft_find_next_prime(777777777));
	printf("%d ", ft_find_next_prime(2147483588));
	printf("%d ", ft_find_next_prime(2147483646));
}