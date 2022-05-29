
#include <stdio.h>
#include <stdlib.h>

int *ft_range(int min, int max);

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

	ret = ft_range(3, 3);
	if (ret)
		printf("User didn't return NULL\n");

	ret = ft_range(3, 0);
	if (ret)
		printf("User didn't return NULL\n");

	ret = ft_range(0, 3);
	print_arr(ret, 3);
	free(ret);

	ret = ft_range(-10, -5);
	print_arr(ret, 5);
	free(ret);

	ret = ft_range(-2147483648, -2147483646);
	print_arr(ret, 2);
	free(ret);

	ret = ft_range(2147483645, 2147483647);
	print_arr(ret, 2);
	free(ret);

	ret = ft_range(-2, 3);
	print_arr(ret, 5);
	free(ret);
}