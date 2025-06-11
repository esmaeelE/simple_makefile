################################################################################
### CUSTOMIZE BELOW HERE #######################################################
################################################################################


# define the compiler to use
CC=gcc 
# define the name of the executable
TARGET=execuatable 
# list source files
# SOURCES=main.c functions.c
SOURCES=$(patsubst %.c, %.o, $(wildcard src/*.c))
INCLUDES = -I./include

# add some flags
CFLAGS=-O3
LFLAGS=-lm


default: $(TARGET)
all: default


# when call make first of all below section is called to genrate object file
# Make object code
%.o: %.c $(HEADERS)
	$(CC) $(INCLUDES) $(CFLAGS) -c $< -o $@

# then link them to create binary executable
# Make binary
$(TARGET): $(SOURCES)
	$(CC) $(SOURCES) -Wall $(LIBS) -o $@


# remove binray executable file
purge: clean
	rm -f $(TARGET)
	rm -rf src/*.o

# remove object files
clean:
	rm -f *.o

run:
	./$(TARGET)


################################################################################
################################################################################
