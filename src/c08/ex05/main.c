
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#include "ft_stock_str.h"

void ft_show_tab(struct s_stock_str *par);

#define ERROR	-1
#define SUCCESS	0

int	ft_strlen(char *s)
{
	int	i;

	i = 0;
	while (s[i])
		++i;
	return (i);
}

int	create_struct(struct s_stock_str *ret, char *s)
{
	int	i;

	i = 0;
	ret->size = ft_strlen(s);
	ret->str = s;
	ret->copy = (char *)malloc(sizeof(char) * (ret->size + 1));
	if (!ret->copy)
		return (ERROR);
	while (i < ret->size)
	{
		ret->copy[i] = s[i];
		++i;
	}
	ret->copy[i] = 0;
	return (SUCCESS);
}

void	free_all(struct s_stock_str *arr, int size)
{
	int	i;

	i = 0;
	while (i < size)
	{
		free(arr[i].copy);
		++i;
	}
	free(arr);
}

struct s_stock_str	*ft_strs_to_tab(int ac, char **av)
{
	struct s_stock_str	*ret;
	int					i;
	int					stt;

	ret = (struct s_stock_str *)malloc(sizeof(struct s_stock_str) * (ac + 1));
	if (!ret)
		return (NULL);
	i = 0;
	while (i < ac)
	{
		stt = create_struct(ret + i, av[i]);
		if (stt == ERROR)
		{
			free_all(ret, i);
			return (NULL);
		}
		++i;
	}
	(ret + i)->size = 0;
	(ret + i)->str = NULL;
	(ret + i)->copy = NULL;
	return (ret);
}


int main(void)
{
	struct s_stock_str *ret;
	char *strs[] = {"123", "eee", ""};

	ret = ft_strs_to_tab(3, strs);
	ret->copy[0] = 'a';
	(ret + 1)->copy[0] = 'n';

	ft_show_tab(ret);
	free_all(ret, 3);

	return (0);
}
