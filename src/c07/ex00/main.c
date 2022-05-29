
#include <stdio.h>
#include <stdlib.h>

char *ft_strdup(char *src);

int	main(void)
{
	char 	*ret;

	ret = ft_strdup("123");
	printf("%s", ret);
	free(ret);
}