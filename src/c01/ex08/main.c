
#include <stdio.h>

void	ft_sort_int_tab(int *tab, int size);

void	print_tab(int *tab, int size)
{
	int	i;

	i = 0;
	printf("%d", tab[i]);
	while (++i < size)
		printf(", %d", tab[i]);
	printf("\n");
}

int main()
{
	int tab1[] = {10};
	int tab2[] = {10, 2, 3, 8, 9, 7, 4, 5, 0, 1, 6};
	int tab3[] = {0, -22, 200000, 100, -1};
	int tab4[] = {2147483647, -2147483648};

	ft_sort_int_tab(tab2, 0);

	ft_sort_int_tab(tab1, 1);
	ft_sort_int_tab(tab2, 11);
	ft_sort_int_tab(tab3, 5);
	ft_sort_int_tab(tab4, 2);

	print_tab(tab1, 1);
	print_tab(tab2, 11);
	print_tab(tab3, 5);
	print_tab(tab4, 2);
}