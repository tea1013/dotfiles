NEOVIM_BASE := ~/.config/nvim

confirm:
	@read -p "Are you sure you want to proceed? [Y/n]: " yn; \
	if [ "$$yn" != "Y" ]; then \
		echo "Aborting"; \
		exit 1; \
	fi

setup: confirm
	mkdir -p $(NEOVIM_BASE)
	rm -rf $(NEOVIM_BASE)/*
	cp -r init.lua lua $(NEOVIM_BASE)

sync:
	rm -rf init.lua lua plugin
	cp -r $(NEOVIM_BASE)/* .

