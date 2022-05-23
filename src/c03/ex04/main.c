
#include <stdio.h>

char *ft_strstr(char *str, char *to_find);

int	main()
{
	char haystack[] = "123abc123";
	char needle[] = "abc";
	char *ret;

	// ret = ft_strstr(haystack, "");
	// printf("%p\n", ret);
	ret = ft_strstr(haystack, needle);
	printf("%s\n", ret);

	return (0);
}
