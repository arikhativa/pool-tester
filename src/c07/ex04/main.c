
#include <stdio.h>
#include <stdlib.h>

char *ft_convert_base(char *nbr, char *base_from, char *base_to);

int	main(void)
{
	char *hex = "0123456789abcdef";
	char *bin = "01";
	char *oct = "01234567";
	char *dec = "0123456789";
	char *pony = "pony";
	char *big_base = "0123456789abcdefghijklmnopqrstuvwxyz";
	char *ret;

	// Bad param:
	ret = ft_convert_base("a", "aa", bin);
	if (ret != NULL)
		printf("User didn;t return NULL\n");
	ret = ft_convert_base("a", "-a", bin);
	if (ret != NULL)
		printf("User didn;t return NULL\n");
	
	ret = ft_convert_base("  + a", hex, bin);
	printf("%s\n", ret);
	free(ret);

	ret = ft_convert_base("     -++++--a", hex, bin);
	printf("%s\n", ret);
	free(ret);

	ret = ft_convert_base("11100010111000101", bin, oct);
	printf("%s\n", ret);
	free(ret);

	ret = ft_convert_base("3320012", oct, pony);
	printf("%s\n", ret);
	free(ret);

	ret = ft_convert_base("yyyyyypon", pony, big_base);
	printf("%s\n", ret);
	free(ret);

	ret = ft_convert_base("-2147483648", dec, dec);
	printf("%s\n", ret);
	free(ret);
}
