NEOVIM_BASE := ~/.config/nvim

confirm:
	@read -p "Are you sure you want to proceed? [y/N]: " yn; \
	if [ "$$yn" != "y" ]; then \
		echo "Aborting"; \
		exit 1; \
	fi

setup/nvim: confirm
	mkdir -p $(NEOVIM_BASE)
	cp -r ./nvim/* $(NEOVIM_BASE)

sync/nvim:
	cp -r $(NEOVIM_BASE)/* ./nvim
