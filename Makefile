# Set the name of the library to be created
NAME = libft.a

# Set compiler flags for warnings and errors
CFLAGS = -Wall -Wextra -Werror

# Set the C compiler to be used
CC = cc

# Define the source files for the library
SOURCES =	ft_isalnum.c \
					ft_isalpha.c \
					ft_isascii.c \
					ft_isdigit.c \
					ft_isprint.c \
					ft_strlen.c \
					ft_tolower.c \
					ft_toupper.c \
					ft_memset.c \
					ft_bzero.c \
					ft_memcpy.c \
					ft_memmove.c \
					ft_strlcpy.c \
					ft_strlcat.c \
					ft_strchr.c \
					ft_strrchr.c \
					ft_strncmp.c \
					ft_memchr.c \
					ft_memcmp.c \
					ft_strnstr.c \
					ft_atoi.c \
					ft_calloc.c \
					ft_strdup.c \
					ft_substr.c \
					ft_strjoin.c \
					ft_strtrim.c \
					ft_split.c \
					ft_itoa.c \
					ft_strmapi.c \
					ft_striteri.c \
					ft_putchar_fd.c \
					ft_putstr_fd.c \
					ft_putendl_fd.c \
					ft_putnbr_fd.c

BONUS = ft_lstnew.c \
				ft_lstadd_front.c \
				ft_lstsize.c \
				ft_lstlast.c \
				ft_lstadd_back.c \
				ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstiter.c \
				ft_lstmap.c

# Define the header file shared across all source code files 
INCS = libft.h

# Generate object file names from source file names
OBJECTS = $(SOURCES:.c=.o)
BONUS_OBJECTS = $(BONUS:.c=.o)

# Define the command to create static library archives and replace/add object files
AR = ar rc

# Rule to generate object files from C source files
.c.o:
	$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

# Define a target for creating the library by linking the object files and header
$(NAME): $(OBJECTS) $(INCS)
	$(AR) $(NAME) $(OBJECTS)

# Default target to build the library
all: $(NAME)

# Target for building the library with bonus files
bonus: $(NAME) $(BONUS_OBJECTS) $(INCS)
	$(AR) $(NAME) $(BONUS_OBJECTS)

# Define the command to remove files 
RM = rm -f

# Remove object files
clean:
	$(RM) $(OBJECTS) $(BONUS_OBJECTS)

# Remove object files and the library file
fclean: clean
	$(RM) $(NAME)

# Recompile everything from scratch
re: fclean all

# Non-file targets that always execute when invoked
.PHONY: all clean fclean re