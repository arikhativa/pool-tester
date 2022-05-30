
#include <stdio.h>
#include <stdlib.h>

char *ft_strjoin(int size, char **strs, char *sep);

int	main(void)
{
	char *strs1[] = {"a", "b", "c"};
	char *sep1 = " ";
	char *ret;

	ret = ft_strjoin(3, strs1, sep1);
	printf("%s\n", ret);
	free(ret);

	ret = ft_strjoin(0, strs1, sep1);
	printf("%s\n", ret);
	free(ret);

	char *strs2[] = {"123", "456", "789", "0000"};
	char *sep2 = "--";

	ret = ft_strjoin(4, strs2, sep2);
	printf("%s\n", ret);
	free(ret);

	char *strs3[] = {"123", "456", "789", "0000"};
	char *sep3 = "";

	ret = ft_strjoin(4, strs3, sep3);
	printf("%s\n", ret);
	free(ret);
}