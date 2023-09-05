confirm:
	@read -p "Are you sure you want to proceed? [y/N]: " yn; \
	if [ "$$yn" != "y" ]; then \
		echo "Aborting"; \
		exit 1; \
	fi

setup/nvim: confirm
	mkdir -p ~/.config/nvim
	cp -r ./nvim/* ~/.config/nvim

sync/nvim:
	cp -r ~/.config/nvim/* ./nvim
