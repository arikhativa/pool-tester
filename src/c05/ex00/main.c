
#include <stdio.h>

int ft_iterative_factorial(int nb);

int	main(void)
{
	printf("%d ", ft_iterative_factorial(5));
	printf("%d ", ft_iterative_factorial(0));
	printf("%d ", ft_iterative_factorial(1));
	printf("%d ", ft_iterative_factorial(12));
	printf("%d ", ft_iterative_factorial(-1));
	printf("%d ", ft_iterative_factorial(-12));
}