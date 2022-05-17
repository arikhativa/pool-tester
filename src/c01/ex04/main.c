
#include <stdio.h>

void ft_ultimate_div_mod(int *a, int *b);

int main()
{
	int a = 123;
	int b = 10;
	int z = 0;
	int *ptr = NULL;

	ft_ultimate_div_mod(&a, &z);
	ft_ultimate_div_mod(ptr, &b);
	ft_ultimate_div_mod(&a, ptr);

	ft_ultimate_div_mod(&a, &b);

	printf("%d %d", a, b);
}