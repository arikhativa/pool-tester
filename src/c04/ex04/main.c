
#include <stdio.h>
#include <unistd.h>

void	ft_putnbr_base(int nbr, char *base);

int	main(void)
{
	char *decimal = "0123456789";
	char *binary = "01";
	char *octal = "poneyvif";
	char *hex = "0123456789ABCDEF";

	write(1, "decimal\n", 8);
	ft_putnbr_base(42, decimal); write(1, "\n", 1);
	ft_putnbr_base(-100, decimal); write(1, "\n", 1);
	ft_putnbr_base(2147483647, decimal); write(1, "\n", 1);
	ft_putnbr_base(-2147483648, decimal); write(1, "\n", 1);
	write(1, "\n", 1);

	write(1, "binary\n", 7);
	ft_putnbr_base(0, binary); write(1, "\n", 1);
	ft_putnbr_base(1, binary); write(1, "\n", 1);
	ft_putnbr_base(5, binary); write(1, "\n", 1);
	ft_putnbr_base(-7, binary); write(1, "\n", 1);
	ft_putnbr_base(2147483647, binary); write(1, "\n", 1);
	ft_putnbr_base(-2147483648, binary); write(1, "\n", 1);
	write(1, "\n", 1);

	write(1, "octal\n", 6);
	ft_putnbr_base(5, octal); write(1, "\n", 1);
	ft_putnbr_base(-70, octal); write(1, "\n", 1);
	ft_putnbr_base(-2147483648, octal); write(1, "\n", 1);
	write(1, "\n", 1);

	write(1, "hex\n", 4);
	ft_putnbr_base(7, hex); write(1, "\n", 1);
	ft_putnbr_base(255, hex); write(1, "\n", 1);
	ft_putnbr_base(2147483647, hex); write(1, "\n", 1);
	ft_putnbr_base(-2147483648, hex); write(1, "\n", 1);

	return (0);
}