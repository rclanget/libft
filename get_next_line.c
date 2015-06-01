/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rclanget <rclanget@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/26 00:49:15 by rclanget          #+#    #+#             */
/*   Updated: 2015/02/19 12:56:01 by rclanget         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	get_line(char *dest, char **line)
{
	int i;

	i = 0;
	while (dest[i] && dest[i] != '\n')
		i++;
	dest[i] = '\0';
	*line = ft_strdup(dest);
	dest = ft_strcpy(dest, (dest + i + 1));
	return (1);
}

int end_line(char *dest, char **line)
{
	if (*dest)
	{
		*line = ft_strdup(dest);
		return (1);
	}
	return (0);
}

int	get_next_line(int const fd, char **line)
{
	static char	*dest;
	char		*buf;
	int			ret;

	if (line == NULL || BUFF_SIZE <= 0)
		return (-1);
	if ((*line = ft_strnew(1)) == NULL)
		return (-1);
	if ((buf = ft_strnew((BUFF_SIZE + 1))) == NULL)
		return (-1);
	if (!dest)
		dest = ft_strnew(BUFF_SIZE + 1);
	while ((ret = read(fd, buf, BUFF_SIZE)))
	{
		if (ret < 0)
			return (-1);
		buf[ret] = '\0';
		dest = ft_strjoin(dest, buf);
		if (ft_strchr(dest, '\n'))
			return (get_line(dest, line));
	}
	if (*dest == '\0' && ret == 0)
		return (end_line(dest, line));
	return (get_line(dest, line));
}
