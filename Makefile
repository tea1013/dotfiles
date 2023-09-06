NEOVIM_BASE := ~/.config/nvim
MSG :=

confirm:
	@read -p "Are you sure you want to proceed? [Y/n]: " yn; \
	if [ "$$yn" != "Y" ]; then \
		echo "Aborting"; \
		exit 1; \
	fi

setup/nvim: confirm
	mkdir -p $(NEOVIM_BASE)
	rm -rf $(NEOVIM_BASE)/*
	cp -r ./nvim/* $(NEOVIM_BASE)

sync/nvim:
	rm -rf ./nvim/*
	cp -r $(NEOVIM_BASE)/* ./nvim
