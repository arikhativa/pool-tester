
#include <stdio.h>
#include <stdlib.h>

char	**ft_split(char *str, char *charset);

void	free_ret(char **strs)
{
	int	i;

	i = 0;
	while (strs[i] != NULL)
	{
		free(strs[i]);
		++i;
	}
	free(strs);
}

void	print_arr(char **a)
{
	int	i = 0;

	while (a[i] != NULL)
	{
		printf("%s\n", a[i]);
		++i;
	}
}

int	main(void)
{
	char **ret;

	char *s1 = "---a--b--ffff----";
	char *sep1 = "--";
	ret = ft_split(s1, sep1);
	print_arr(ret);
	free_ret(ret);

	char *s2 = "Hey what   is   ypp    ?";
	char *sep2 = " ";
	ret = ft_split(s2, sep2);
	print_arr(ret);
	free_ret(ret);
	
	char *s3 = "123Looks123123123123Good123123";
	char *sep3 = "123";
	ret = ft_split(s3, sep3);
	print_arr(ret);
	free_ret(ret);
}
