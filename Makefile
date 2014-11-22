PROJECT	:= xrasengan
BIN	:= /usr/bin
COMPLETE:= $(PROJECT)_complete
COMPPATH:= /usr/share/bash-completion/completions

.PHONY: install

install:
	@echo \* Installing
	sudo cp $(PROJECT) $(BIN)
	sudo chmod 755 $(BIN)/$(PROJECT)
	sudo cp $(COMPLETE) $(COMPPATH)/$(PROJECT)
	sudo chmod 644 $(COMPPATH)/$(PROJECT)
	@echo \* Done
	@echo \* For help: xrasengan --help

uninstall:
	@echo \* Uninstalling
	sudo rm $(BIN)/$(PROJECT)
	sudo rm $(COMPPATH)/$(PROJECT)
	@echo \* Done
