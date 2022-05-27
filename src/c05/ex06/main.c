
#include <stdio.h>

int ft_is_prime(int nb);

int	main(void)
{
	printf("%d ", ft_is_prime(254));
	printf("%d ", ft_is_prime(255));
	printf("%d ", ft_is_prime(270));
	printf("%d ", ft_is_prime(713));
	printf("%d ", ft_is_prime(0));
	printf("%d ", ft_is_prime(1));
	printf("%d ", ft_is_prime(2));
	printf("%d ", ft_is_prime(3));
	printf("%d ", ft_is_prime(4));
	printf("%d ", ft_is_prime(5));
	printf("%d ", ft_is_prime(6));
	printf("%d ", ft_is_prime(1187));
	printf("%d ", ft_is_prime(37573));
	printf("%d ", ft_is_prime(37575));
	printf("%d ", ft_is_prime(1234572271));
	printf("%d ", ft_is_prime(2147483423));
	printf("%d ", ft_is_prime(2147483646));
	printf("%d ", ft_is_prime(2147483647));
}