
#include <stdio.h>

int	ft_strlen(char *str);

int main()
{
	char *s1 = "1";
	char *s2 = "";
	char *s3 = "12345678901";

	printf("%d\n", ft_strlen(s1));
	printf("%d\n", ft_strlen(s2));
	printf("%d\n", ft_strlen(s3));
}