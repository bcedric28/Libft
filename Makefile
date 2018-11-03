# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bcedric <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/05 19:38:51 by bcedric           #+#    #+#              #
#    Updated: 2018/10/05 19:38:53 by bcedric          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAG = -Wall -Wextra -Werror

SOURCE = ft_atoi.c ft_bzero.c ft_is_lower.c ft_is_upper.c ft_isalnum.c \
		ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c \
		ft_lstadd.c ft_lstdel.c ft_lstdelone.c ft_lstiter.c ft_lstmap.c \
		ft_lstnew.c ft_memalloc.c ft_memccpy.c ft_memchr.c ft_memcmp.c \
		ft_memcpy.c ft_memdel.c ft_memmove.c ft_memset.c ft_putchar.c \
		ft_putchar_fd.c ft_putendl.c ft_putendl_fd.c ft_putnbr.c \
		ft_putnbr_fd.c ft_putstr.c ft_putstr_fd.c ft_strcat.c ft_strchr.c \
		ft_strclr.c ft_strcmp.c ft_strcpy.c ft_strdel.c ft_strdup.c \
		ft_strequ.c ft_striter.c ft_striteri.c ft_strjoin.c ft_strlcat.c \
		ft_strlen.c ft_strmap.c ft_strmapi.c ft_strncat.c ft_strncmp.c \
		ft_strncpy.c ft_strndup.c ft_strnequ.c ft_strnew.c ft_strnstr.c \
		ft_strrchr.c ft_strsplit.c ft_strstr.c ft_strsub.c ft_strtrim.c \
		ft_tolower.c ft_toupper.c get_next_line.c ft_swap.c ft_sqrt.c \
		ft_sqrt_next.c ft_strcspn.c

OBJ = $(subst .c,.o,$(SOURCE))
SRC_DIR = $(addprefix src/, $(SOURCE))
INCLUDE = includes/

GGCOLORCYAN = \033[96m
GGCOLORGREEN = \033[32m
GGCOLORRED = \033[31m
GGRESET = \033[39m

all: $(NAME)

$(NAME):
	@gcc -c $(FLAG) $(SRC_DIR) -I $(INCLUDE)
	@echo "$(GGCOLORCYAN)Compilation$(GGRESET) des fichiers source..."
	@ar rc $(NAME) $(OBJ)
	@echo "$(GGCOLORCYAN)Creation$(GGRESET) de la librairie..."
	@ranlib $(NAME)
	@echo "$(GGCOLORCYAN)Indexation$(GGRESET) de la librairie..."
	@echo "$(GGCOLORGREEN)Success!$(GGRESET)"

clean:
	@rm -rf $(OBJ)
	@echo "$(GGCOLORRED)Suppresion$(GGRESET) des fichiers objet..."

fclean: clean 
	@rm -rf $(NAME)
	@echo "$(GGCOLORRED)Suppresion$(GGRESET) de la librairie..."

re: fclean all

.PHONY: clean fclean re all 