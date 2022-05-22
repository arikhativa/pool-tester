
#include <stdio.h>

void ft_putstr_non_printable(char *str);

int	main()
{
	char *s1 = "123\nnnn";
	char s2[] = {1, 2, 3, 11, 12, 13, 16, 0};

	ft_putstr_non_printable(s1);
	ft_putstr_non_printable(s2);

	return (0);
}
