POLYBAR_CONFIG := $(shell ./non-linked-scripts/determine-polybar-config.sh)
HOME_DIRECTORY := $(shell ./non-linked-scripts/get-user-home-directory.sh)

.PHONY: all
all: stow gitconfig

.PHONY: stow
stow:
	$(shell ./non-linked-scripts/generate-kitty-overrides.sh)
	@mkdir -p ~/DesktopBackgrounds
	@stow -t ~ compton dunst kitty neovim vim bash-linux dircolors i3 tmux fonts linux-config bat coc prezto
	@stow -t ~ $(POLYBAR_CONFIG)
	@stow -t ~/DesktopBackgrounds desktop-backgrounds
	@stow -t ~/.local/share desktop

.PHONY: unstow
unstow:
	@stow -D -t ~ compton dunst kitty neovim vim bash-linux dircolors i3 tmux fonts linux-config bat coc prezto
	@stow -D -t ~ $(POLYBAR_CONFIG)
	@stow -D -t ~/DesktopBackgrounds desktop-backgrounds
	@stow -D -t ~/.local/share desktop

.PHONY: gitconfig
gitconfig:
	@cp ~/.gitconfig ~/.old-gitconfig
	@sed -i 's/^\s*//g' ~/.gitconfig
	@crudini --merge ~/.gitconfig < ./git/aliases.ini

.PHONY: prestow
prestow:
	@./non-linked-scripts/clear-out-files-before-stow.sh
