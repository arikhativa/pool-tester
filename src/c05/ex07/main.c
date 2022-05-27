
#include <stdio.h>

int ft_find_next_prime(int nb);

int	main(void)
{
	printf("%d ", ft_find_next_prime(387431));
	printf("%d ", ft_find_next_prime(154993));
	printf("%d ", ft_find_next_prime(265590));
	printf("%d ", ft_find_next_prime(263032));
	printf("%d ", ft_find_next_prime(321913));
	printf("%d ", ft_find_next_prime(215947));
	printf("%d ", ft_find_next_prime(286604));
	printf("%d ", ft_find_next_prime(263032));
	printf("%d ", ft_find_next_prime(-2147483648));
	printf("%d ", ft_find_next_prime(0));
	printf("%d ", ft_find_next_prime(1));
	printf("%d ", ft_find_next_prime(777777777));
	printf("%d ", ft_find_next_prime(2147483588));
	printf("%d ", ft_find_next_prime(2147483646));
}
