
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#include "ft_stock_str.h"

struct s_stock_str *ft_strs_to_tab(int ac, char **av);

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

void	ft_putstr(char *s)
{
	while (*s)
	{
		ft_putchar(*s);
		++s;
	}
}

void	rec(long n)
{
	if (n / 10)
	{
		rec(n / 10);
		rec(n % 10);
	}
	if (n < 10)
		ft_putchar(n + '0');
}

void	ft_putnbr(int nb)
{
	long	n;

	n = (long)nb;
	if (n < 0)
	{
		n = n * -1;
		write(1, "-", 1);
	}
	rec(n);
}

void	ft_show_tab(struct s_stock_str *par)
{
	while (par->str != NULL)
	{
		ft_putstr(par->str);
		ft_putchar('\n');
		ft_putnbr(par->size);
		ft_putchar('\n');
		ft_putstr(par->copy);
		ft_putchar('\n');
		++par;
	}
}

void	free_arr(struct s_stock_str *arr, int size)
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

int main(void)
{
	struct s_stock_str *ret;
	char *strs[] = {"123", "eee", ""};

	ret = ft_strs_to_tab(3, strs);
	ret->copy[0] = 'a';
	(ret + 1)->copy[0] = 'n';

	ft_show_tab(ret);
	free_arr(ret, 3);

	return (0);
}
