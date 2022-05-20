
void	ft_putchar(char c);

int	main(void)
{
	char *s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	while (*s) 
	{
		ft_putchar(*s);
		++s;
	}

	return 0;
}
