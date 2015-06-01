#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rclanget <rclanget@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/11 11:34:51 by rclanget          #+#    #+#              #
#    Updated: 2015/02/19 13:01:00 by rclanget         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

SRC = ft_isprint.c ft_putnbr.c ft_strjoin.c	ft_strtrim.c ft_itoa.c \
	ft_putnbr_fd.c ft_strlcat.c	ft_tolower.c ft_memccpy.c ft_putstr.c \
	ft_strlen.c ft_toupper.c ft_memchr.c ft_putstr_fd.c	ft_strmap.c \
	ft_memcmp.c	ft_strcat.c ft_strncat.c ft_atoi.c ft_memcpy.c ft_strchr.c \
	ft_strncmp.c ft_bzero.c ft_memset.c	ft_strclr.c	ft_strncpy.c \
	ft_isalnum.c ft_putchar.c ft_strcmp.c ft_strnew.c ft_isalpha.c \
	ft_strcpy.c ft_strnstr.c ft_isascii.c ft_putendl.c ft_strdup.c ft_strrchr.c \
	ft_isdigit.c ft_putendl_fd.c ft_striter.c ft_strstr.c ft_memalloc.c \
	ft_strsplit.c ft_memdel.c ft_memmove.c ft_strdel.c ft_strequ.c \
	ft_striteri.c ft_strmapi.c ft_strnequ.c ft_strsub.c ft_putchar_fd.c \
	ft_strrev.c ft_lstmap.c ft_lstiter.c ft_lstadd.c ft_lstdel.c \
	ft_lstdelone.c ft_lstnew.c ft_strjoin_woc.c get_next_line.c

OFILE = ft_isprint.o ft_putnbr.o ft_strjoin.o ft_strtrim.o ft_itoa.o \
    ft_putnbr_fd.o ft_strlcat.o ft_tolower.o ft_memccpy.o ft_putstr.o \
    ft_strlen.o ft_toupper.o ft_memchr.o ft_putstr_fd.o ft_strmap.o \
    ft_memcmp.o ft_strcat.o ft_strncat.o ft_atoi.o ft_memcpy.o ft_strchr.o \
    ft_strncmp.o ft_bzero.o ft_memset.o ft_strclr.o ft_strncpy.o ft_isalnum.o \
    ft_putchar.o ft_strcmp.o ft_strnew.o ft_isalpha.o ft_putchar_fd.o \
    ft_strcpy.o ft_strnstr.o ft_isascii.o ft_putendl.o ft_strdup.o ft_strrchr.o \
    ft_isdigit.o ft_putendl_fd.o ft_striter.o ft_strstr.o \
	ft_strsplit.o ft_memdel.o ft_memmove.o ft_strdel.o ft_strequ.o \
    ft_striteri.o ft_strmapi.o ft_strnequ.o ft_strsub.o ft_memalloc.o \
    ft_strrev.o ft_lstmap.o ft_lstiter.o ft_lstadd.o ft_lstdel.o \
	ft_lstdelone.o ft_lstnew.o ft_strjoin_woc.o get_next_line.o
    
FLAGS = -Wall -Wextra -Werror


all: $(NAME)

$(NAME):
	gcc $(FLAGS) -c $(SRC) -I./includes
	ar rc $(NAME) $(OFILE)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OFILE)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all