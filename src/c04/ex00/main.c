
#include <stdio.h>

int ft_strlen(char *str);

int	main(void)
{
	char *s = "12345";

	printf("%d\n", ft_strlen(s));
	printf("%d\n", ft_strlen(""));
}