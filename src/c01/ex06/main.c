
#include <stdio.h>

void	ft_rev_int_tab(int *tab, int size);

void	print_tab(int *tab, int size)
{
	int	i;

	i = -1;
	while (++i < size)
		printf("%d", tab[i]);
	printf("\n");
}

int main()
{
	int tab1[] = {1};
	int tab2[] = {1, 2};
	int tab3[] = {1, 2, 3};
	int tab4[] = {1, 2, 3, 4};
	int tab5[] = {1, 2, 3, 4, 5};
	int	*ptr = NULL;

	ft_rev_int_tab(ptr, 5);
	ft_rev_int_tab(tab2, 0);

	ft_rev_int_tab(tab1, 1);
	ft_rev_int_tab(tab2, 2);
	ft_rev_int_tab(tab3, 3);
	ft_rev_int_tab(tab4, 4);
	ft_rev_int_tab(tab5, 5);

	print_tab(tab1, 1);
	print_tab(tab2, 2);
	print_tab(tab3, 3);
	print_tab(tab4, 4);
	print_tab(tab5, 5);
}