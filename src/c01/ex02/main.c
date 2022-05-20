
#include <stdio.h>

void	ft_swap(int *a, int *b);

int main()
{
	int a = 2;
	int b = 1;

	ft_swap(&a, &b);

	printf("%d%d", a, b);
}