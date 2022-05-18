
#include <stdio.h>

char	*ft_strcpy(char *dest, char *src);

int	main()
{
	char *src = "string";
	char dest[7];
	char *ret;

	ret = ft_strcpy(dest, src);
	printf("%s", ret);

	return (0);
}
