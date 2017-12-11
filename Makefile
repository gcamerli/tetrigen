# Non-file targets
.PHONY: all clean fclean re

# Compiler and binaries
CC=/usr/bin/gcc
RM=/bin/rm
MKDIR=/bin/mkdir

# Colors
GREEN=\033[0;32m
BLUE=\033[0;34m
RED=\033[0;31m
NC=\033[0m

# Program name
NAME=tetrigen

# Soruce and objects
SRCDIR=src

SRC=$(wildcard $(SRCDIR)/*.c)

OBJDIR=obj

OBJ=$(patsubst $(SRCDIR)/%.c,$(OBJDIR)/%.o,$(SRC))

# Flags and include
CFLAGS=-Wall -Wextra -Werror
INC=include

# Default make
all: $(OBJDIR) $(NAME)

$(NAME): $(OBJ)
	@printf "$(GREEN) ✓ Building $(NAME)\n"
	@$(CC) $(CFLAGS) -o $@ $^

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	@printf "$(GREEN) ✓ Creating file $@\n"
	@$(CC) $(CFLAGS) -I$(INC) -c $< -o $@

# Clean objects
clean:
	@printf "$(BLUE) ✗ Deletion of object files\n"
	@rm -rf $(OBJDIR)

# Clean in depth
fclean: clean
	@printf "$(RED) ✗ Deletion of $(NAME)\n"
	@$(RM) -f $(NAME)

# Remake
re: fclean all

$(OBJDIR):
	@printf "$(GREEN) ✓ Creation of $(OBJDIR) dir\n"
	@$(MKDIR) $(OBJDIR)
