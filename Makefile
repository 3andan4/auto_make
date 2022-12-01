##
## EPITECH PROJECT, 2022
## MAKEFILE
## File description:
## Makefile

SRC	=	%SRC
OBJ	=	$(SRC:.c=.o)

NAME	=	%NAME

TESTS	=	-lcriterion --coverage

LIB	=		-L./lib %LIB

${NAME}:	${OBJ}
			%ALL
			gcc -o ${NAME} ${OBJ} $(LIB)

all :		${NAME}

clean:
			rm -f ${OBJ}
			%CLEAN


fclean:	clean
			rm -f ${NAME}
			%FCLEAN
			rm -f *.gcno *.gcda unit_tests

re:		fclean all

unit_tests:		re
		gcc -o unit_tests $(SRC) tests/tests_mysh.c $(LIB) $(TESTS)

tests_run:		unit_tests
		./unit_tests

test_clean:
		rm -f *.gcno *.gcda unit_tests

.PHONY: all clean fclean re unit_tests tests_run
