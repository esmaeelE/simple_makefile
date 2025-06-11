################################################################################
### CUSTOMIZE BELOW HERE #######################################################
################################################################################


# define the compiler to use
CC=gcc 
# define the name of the executable
TARGET=runme 
# list source files
SOURCES=main.c functions.c
# add some flags
CFLAGS=-O3
LFLAGS=-lm

################################################################################
### DO NOT EDIT THE FOLLOWING LINES ############################################
################################################################################

# define list of objects
OBJSC=$(SOURCES:.c=.o)
OBJS=$(OBJSC:.cpp=.o)

# the target is obtained linking all .o files
all: $(SOURCES) $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o $(TARGET)

# remove binray executable file
purge: clean
	rm -f $(TARGET)

# remove object files
clean:
	rm -f *.o

run:
	./$(TARGET)


################################################################################
################################################################################
