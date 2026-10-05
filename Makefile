PROJECT = protocol

.PHONY: default clean

default: obj/$(PROJECT).pdf

obj/$(PROJECT).pdf: $(PROJECT).tex | obj/
	lualatex -halt-on-error -output-directory=obj $(PROJECT)

obj/:
	mkdir -p obj/

clean:
	rm -rf obj/
