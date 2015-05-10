SRC=src
OUT=out
FIG=fig
REF=ref

SRCS=$(wildcard $(SRC)/*.tex)

target=main

all: pdf

.PHONE: edit pdf view


pdf: $(target).pdf

view: $(OUT)/$(target).pdf
	evince $? 2> /dev/null &

$(OUT)/%.pdf: $(SRC)/%.tex
	@mkdir -p $(OUT) 
	@pdflatex --output-directory=./out --file-line-error $< 2> /dev/null 

edit: $(SRCS)
	vim -p$(shell echo "$?" | wc -w) $(SRCS);

clean:
	rm -r $(OUT)
