/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bcedric <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/05 17:07:52 by bcedric           #+#    #+#             */
/*   Updated: 2018/10/05 17:07:59 by bcedric          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/libft.h"

char	*ft_strchr(const char *s, int c)
{
	int	i;

	if (s[0] == '\0' && c == '\0')
		return ((char*)s);
	i = 0;
	while (s[i] != '\0')
	{
		if (s[i] == c)
			return ((char*)&s[i]);
		else if (s[i + 1] == c)
			return ((char*)&s[i + 1]);
		i++;
	}
	return (0);
}
