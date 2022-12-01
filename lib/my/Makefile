##
## EPITECH PROJECT, 2022
## .automakefile
## File description:
## libMake
##

SRC=	%LIB

NAME=	lib%NAME.a

LIB_DEST=	../

OBJ=	$(SRC:.c=.o)

all:	$(NAME)

$(NAME):	$(OBJ)
	ar rc $(NAME) $(OBJ)
	mv $(NAME) $(LIB_DEST)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	rm -f ../$(NAME)

re: fclean all
