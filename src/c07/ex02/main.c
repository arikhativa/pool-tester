
#include <stdio.h>
#include <stdlib.h>

int ft_ultimate_range(int **range, int min, int max);

void	print_arr(int *arr, int size)
{
	int i = 0;
	while (i < size)
	{
		printf("%d ", arr[i]);
		++i;
	}
	printf("\n");
}

int	main(void)
{
	int *ret;
	int s;

	s = ft_ultimate_range(&ret, 3, 3);
	if (ret)
		printf("User didn't return NULL\n");
	if (s)
		printf("User didn't return size -> 0\n");

	s = ft_ultimate_range(&ret, 0, 3);
	print_arr(ret, s);
	free(ret);

	s = ft_ultimate_range(&ret, -10, -5);
	print_arr(ret, s);
	free(ret);

	s = ft_ultimate_range(&ret, -2147483648, -2147483646);
	print_arr(ret, s);
	free(ret);

	s = ft_ultimate_range(&ret, 2147483645, 2147483647);
	print_arr(ret, s);
	free(ret);

	s = ft_ultimate_range(&ret, -2, 3);
	print_arr(ret, s);
	free(ret);
}