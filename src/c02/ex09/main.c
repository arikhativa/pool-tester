
#include <stdio.h>

char *ft_strcapitalize(char *str);

int	main()
{
	char s1[] = "hey";
	char s2[] = "hEY";
	char s3[] = " h EY ";
	char s4[] = "salut, comment tu vas ? 42mots quarante-deux; cinquante+et+un";
	char s5[] = " YY42       aB ";

	char *ret;

	ret = ft_strcapitalize(s1);
	printf("%s-%s\n", ret, s1);
	ret = ft_strcapitalize(s2);
	printf("%s-%s\n", ret, s2);
	ret = ft_strcapitalize(s3);
	printf("%s-%s\n", ret, s3);
	ret = ft_strcapitalize(s4);
	printf("%s-%s\n", ret, s4);
	ret = ft_strcapitalize(s5);
	printf("%s-%s\n", ret, s5);

	return (0);
}
