NAME = libft.a

SRC = *.c
OBJ = $(SRC:.c=.o)

FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@echo - generated $(NAME)

$(OBJ): $(SRC)
	@gcc $(FLAGS) -c $(SRC)

clean:
	@rm -f $(OBJ)
	@echo - deleted object files

fclean: clean
	@rm -f $(NAME)
	@echo - deleted $(NAME)

re: fclean all
