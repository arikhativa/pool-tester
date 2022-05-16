
#include <stdio.h>

void	ft_swap(int *a, int *b);

int main()
{
	int a = 2;
	int b = 1;
	int *ptr = NULL;

	ft_swap(ptr, ptr);
	ft_swap(&a, &b);

	printf("%d%d", a, b);
}