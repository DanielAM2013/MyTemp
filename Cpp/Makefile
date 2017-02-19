ARG=arg
BIN=bin
LIB=lib
SRC=src
OUT=out
BIN=bin
CFLAGS=-I $(LIB)

SRCS=$(wildcard $(SRC)/*.cpp)

target=main

all: compilation test

test:
	$(BIN)/$(target)

compilation:
	mkdir -p $(OUT) $(BIN)
	g++ $(SRC)/$(target).cpp -o $(BIN)/$(target) $(CFLAGS)

edit: $(SRCS)
	vim -p$(shell echo "$?" | wc -w) $(SRCS);


clean:
	rm -rf $(OUT) $(BIN)
