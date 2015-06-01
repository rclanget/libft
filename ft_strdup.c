/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rclanget <rclanget@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 16:04:15 by rclanget          #+#    #+#             */
/*   Updated: 2014/11/12 16:26:24 by rclanget         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char *ft_strdup(const char *s1)
{
	char *s2;

	s2 = (char *)malloc((sizeof(char) * ft_strlen(s1)) + 1);
	if (s2 == NULL)
		return (NULL);
	return (ft_strcpy(s2, s1));
}
