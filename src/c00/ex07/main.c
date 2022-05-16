
#include <unistd.h>

void	ft_putnbr(int nb);

int	main(void)
{
	ft_putnbr(0); 
	write(1, " ", 1);
	ft_putnbr(1);
	write(1, " ", 1);
	ft_putnbr(10);
	write(1, " ", 1);
	ft_putnbr(-10);
	write(1, " ", 1);
	ft_putnbr(123);
	write(1, " ", 1);
	ft_putnbr(321);
	write(1, " ", 1);
	ft_putnbr(2147483647);
	write(1, " ", 1);
	ft_putnbr(-2147483648);
	return 0;
}