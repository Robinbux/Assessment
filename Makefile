all: fillit

prog: fillit.o
	gcc -o prog fillit.o
	
fillit.o: fillit.c
	gcc -c -Wall -Wextra -Werror fillit.c
	
clean:
	rm -f fillit *.o

fclean: clean
	rm -rf fillit
	
re: fclean all