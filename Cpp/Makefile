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
	$(BIN)/$(target) > .log

compilation:
	@mkdir -p $(OUT) $(BIN)
	@g++ $(SRC)/$(target).cpp -o $(BIN)/$(target) $(CFLAGS) > .log 2>&1 

edit: $(SRCS)
	vim -p$(shell echo "$?" | wc -w) $(SRCS);

view:
	tailf .log


clean:
	rm -rf $(OUT) $(BIN)
