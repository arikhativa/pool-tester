
#include <stdio.h>

char *ft_strncpy(char *dest, char *src, unsigned int n);


int	main()
{
	char *src1 = "string";
	char dest1[7];
	unsigned int n1 = 7;

	char *src2 = "12";
	char dest2[] = {'a', 'b', '\0'};
	unsigned int n2 = 1;

	char *src3 = "1";
	char dest3[] = {'1', '\0', 'a', 'b', '\0'};
	unsigned int n3 = 5;

	char *ret;

	ret = ft_strncpy(dest1, src1, n1);
	printf("%s\n", ret);

	ret = ft_strncpy(dest2, src2, n2);
	printf("%s\n", ret);

	ret = ft_strncpy(dest3, src3, n3);
	dest3[2] = 'a';
	printf("%s\n", (ret + 2));

	return (0);
}
