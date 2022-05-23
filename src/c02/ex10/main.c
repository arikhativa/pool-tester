
#include <stdio.h>

unsigned int ft_strlcpy(char *dest, char *src, unsigned int size);
int	main()
{
	char s[] = "1234567";
	char d[7];
	int i = 0;

	i = ft_strlcpy(d, s, 7);
	printf("%s\n", s);
	printf("%s\n", d);
	printf("%d\n", i);
	i = ft_strlcpy(d, s, 0);
	printf("%s\n", d);
	printf("%d\n", i);

	return (0);
}
