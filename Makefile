tests  := $(wildcard molecule/*)
scenarios := $(tests)

lint:
	yamllint . 
	ansible-lint . 

test: lint
	make all -j5 -O

.PHONY: all
all: $(scenarios)

.PHONY: $(tests)
$(tests): 
	molecule test --parallel -s $(notdir $@)	