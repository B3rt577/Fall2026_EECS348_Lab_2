# Compiler to use
CC = gcc

# Compiler flags (-Wall and -Wextra enable warnings, -g adds debugging info)
CFLAGS = -Wall -Wextra -g

# Name of the final executable
TARGET = isOdd

# Object files needed to build the target
OBJS = main.o isOdd.o

# Default target runs when you just type 'make'
all: $(TARGET)

# Rule to link the object files into the final executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Rule to compile main.c into an object file
main.o: main.c isOdd.h
	$(CC) $(CFLAGS) -c main.c

# Rule to compile isOdd.c into an object file
isOdd.o: isOdd.c isOdd.h
	$(CC) $(CFLAGS) -c isOdd.c

# Rule to clean up intermediate object files and the executable
clean:
	rm -f $(OBJS) $(TARGET)
