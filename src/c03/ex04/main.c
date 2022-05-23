
#include <stdio.h>

char *ft_strstr(char *str, char *to_find);

int	main()
{
	char haystack[] = "123abc123";
	char needle[] = "abc";
	char *ret;
	int	is_same = 0;

	ret = ft_strstr(haystack, "");
	is_same = (ret == haystack);
	if (!is_same)
		printf("User didn't return haystack\n");
	ret = ft_strstr(haystack, "NO");
	printf("%lu\n", (unsigned long)ret);
	ret = ft_strstr(haystack, needle);
	printf("%s\n", ret);

	return (0);
}
