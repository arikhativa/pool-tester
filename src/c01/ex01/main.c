
#include <stdio.h>

void	ft_ultimate_ft(int *********nbr);

int main()
{
	int i = 0;
	int *i0 = &i;
	int **i1 = &i0;
	int ***i2 = &i1;
	int ****i3 = &i2;
	int *****i4 = &i3;
	int ******i5 = &i4;
	int *******i6 = &i5;
	int ********i7 = &i6;
	int *********i8 = &i7;

	ft_ultimate_ft(i8);

	printf("%d", i);
}