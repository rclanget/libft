/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_is_tab_digit.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rclanget <rclanget@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/10/15 00:53:37 by rclanget          #+#    #+#             */
/*   Updated: 2015/10/15 00:53:40 by rclanget         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

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
