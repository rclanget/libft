#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rclanget <rclanget@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/11 11:34:51 by rclanget          #+#    #+#              #
#    Updated: 2015/06/01 15:35:32 by rclanget         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

SDIR = sources
IDIR = includes/

SRC = $(shell find $(SDIR) -type f | grep "\.c")

OBJ = $(SRC:.c=.o)

FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ) && ranlib $(NAME) && \
		printf " -->> \033[32mCompilation Success: %s\033[0m             \n" "$@"|| \
		printf " -->> \033[31mCompilation Failed: %s\033[0m              \n" "$@";

%.o: %.c
	@gcc $(FLAGS) -o $@ -c $< -I $(IDIR) && \
		printf " -->> \033[32mOk\033[0m: %s                       \r" "$@" || \
		printf " -->> \033[31mKo\033[0m: %s                       \r" "$@";

clean:
	@/bin/rm -f $(OBJ)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all