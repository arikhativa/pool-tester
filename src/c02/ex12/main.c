
#include <stdio.h>
#include <string.h>

void	*ft_print_memory(void *addr, unsigned int size);

int	main()
{
	char	s[] = "marvin \athe\b bot\t, \nthe\v ship\f is\r in\n danger";
	int	l = strlen(s);
	s[0] = 0;

	ft_print_memory(s, l);

	return (0);
}
