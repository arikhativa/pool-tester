
#include <stdio.h>

void ft_putstr_non_printable(char *str);

int	main()
{
	char *s1 = "123\nnnn";
	char s2[] = {255, 2, 3, 11, 12, 13, 16, 0};
	char	*s3 = "marvin \athe\b bot\t, \nthe\v ship\f is\r in\n danger";

	ft_putstr_non_printable(s1);
	ft_putstr_non_printable(s2);
	ft_putstr_non_printable(s3);

	return (0);
}
