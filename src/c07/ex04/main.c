
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
	ret = ft_convert_base("", bin, bin);
	if (ret != NULL)
		printf("Expected NULL - nbr empty - ret: %s\n", ret);

	ret = ft_convert_base("a", "a", bin);
	if (ret != NULL)
		printf("Expected NULL - base 1 - ret: %s\n", ret);

	ret = ft_convert_base("   -+ 10", dec, bin);
	if (ret != NULL)
		printf("Expected NULL - nbr has space after signs - ret: %s\n", ret);

	ret = ft_convert_base("-2147483649", dec, "01");
	if (ret != NULL)
		printf("Expected NULL - nbr is not int - ret: %s\n", ret);
	
	ret = ft_convert_base("a", "12", "");
	if (ret != NULL)
		printf("Expected NULL - empty base_to - ret: %s\n", ret);

	ret = ft_convert_base("a", "", bin);
	if (ret != NULL)
		printf("Expected NULL - empty base_from - ret: %s\n", ret);

	ret = ft_convert_base("a", "aa", bin);
	if (ret != NULL)
		printf("Expected NULL - base has 'a' twice - ret: %s\n", ret);

	ret = ft_convert_base("a", "-a", bin);
	if (ret != NULL)
		printf("Expected NULL - base has '-' - ret: %s\n", ret);

	ret = ft_convert_base("a", "+a", bin);
	if (ret != NULL)
		printf("Expected NULL - base has '+' - ret: %s\n", ret);

	ret = ft_convert_base("12", "01 2", bin);
	if (ret != NULL)
		printf("Expected NULL - base has ' ' (space..) - ret: %s\n", ret);

	char unprint_base[] = {3, 0};
	ret = ft_convert_base("12", unprint_base, bin);
	if (ret != NULL)
		printf("Expected NULL - base is unprintable - ret: %s\n", ret);

	ret = ft_convert_base("  ", hex, bin);
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

	ret = ft_convert_base("003", dec, dec);
	printf("%s\n", ret);
	free(ret);
}
