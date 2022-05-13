
#include <stdio.h>

void	ft_is_negative(int n);

int	main(void)
{
	int	num_arr[] = {-1, 0, 2147483646, 1337, -42, -2147483647, -1337, 6473287, -328, 612567};
	int	i = 0;

	while (i < 10)
		ft_is_negative(num_arr[i++]);

	return 0;
}
