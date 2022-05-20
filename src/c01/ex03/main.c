
#include <stdio.h>

void ft_div_mod(int a, int b, int *div, int *mod);

int main()
{
	int a = 422;
	int b = 10;
	int div = 42;
	int mod = 2;

	ft_div_mod(a, 0, &div, &mod);
	
	ft_div_mod(a, b, &div, &mod);

	printf("%d %d", div, mod);
}