# Define variables
CXX = g++
CXXFLAGS = -std=c++11
LDFLAGS = -lncurses
TARGET = hello_ncurses
SRC = main.cpp
OBJ = $(SRC:.cpp=.o)

# Default target: build the executable
all: $(TARGET)

# Rule to build the target executable
$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJ) $(LDFLAGS)

# Rule to build the object file
$(OBJ): $(SRC)
	$(CXX) $(CXXFLAGS) -c $(SRC)

# Rule to clean the build artifacts
clean:
	rm -f $(TARGET) $(OBJ)

# Rule to run the program
run: $(TARGET)
	./$(TARGET)

