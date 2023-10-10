CC = g++
SRC_DIR= src
BUILD_DIR= bin

COMPILER_FLAGS= -w

OBJS= 	$(SRC_DIR)/main.cpp \
		$(SRC_DIR)/calculator.cpp \

.PHONY: all clean run

all: $(BUILD_DIR)/main

$(BUILD_DIR)/main: $(SRC_DIR)/main.cpp
	@echo "Building..."
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(OBJS) $(COMPILER_FLAGS) -o $(BUILD_DIR)/main
	@echo "Building finished. Output: $(BUILD_DIR)/main"

clean:
	@echo "Cleaning..."
	@rm -rf $(BUILD_DIR)
	@echo "Cleaning finished."

run: all
	@clear
	@echo "Running... Output:"
	@./$(BUILD_DIR)/main