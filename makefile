#This is the Makefile
SRC=main.tex
DIR=gen
FORMAT=pdf
INTERACTION=batchmode

FLAGS=-output-directory=$(DIR) -output-format=$(FORMAT)  -halt-on-error

all:
	make pdf
pdf:
	pdflatex $(FLAGS) tex/$(SRC)

preview:
	/Applications/Preview.app/Contents/MacOS/Preview $(DIR)/$(SRC:.tex=.pdf)
