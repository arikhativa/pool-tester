
#include <stdio.h>

int ft_recursive_factorial(int nb);

int	main(void)
{
	printf("%d ", ft_recursive_factorial(5));
	printf("%d ", ft_recursive_factorial(0));
	printf("%d ", ft_recursive_factorial(1));
	printf("%d ", ft_recursive_factorial(2));
	printf("%d ", ft_recursive_factorial(12));
	printf("%d ", ft_recursive_factorial(-1));
	printf("%d ", ft_recursive_factorial(-12));
}