OCL=ocl
BIN=bin
LIB=lib
SRC=src


CPPFLAGS=-I $(LIB)
CLIBS=-lOpenCL

all: 

edit: $(SRC)/*
	echo "$(length($?))"


$(BIN)/%: $(SRC)/%.cpp
	$(CC) $(CPPFLAGS) $? -o $@ $(CLIBS)

clean:
	rm -f bin/* out/*
