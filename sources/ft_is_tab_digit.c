#include "libft.h"

int	ft_is_tab_digit(char **tab)
{
	int	i;
	int	j;

	i = -1;
	j = 0;
	while (tab[++i])
	{
		while (tab[i][j])
			if (!ft_isdigit(tab[i][j++]))
				return (0);
	}
	return (1);
}