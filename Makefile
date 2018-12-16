POLYBAR_CONFIG := $(shell ./non-linked-scripts/determine-polybar-config.sh)

.PHONY: all
all: stow gitconfig

.PHONY: stow
stow:
	@mkdir -p ~/DesktopBackgrounds
	@mkdir -p ~/scripts
	@stow -t ~ alacritty compton dunst kitty neovim termite vim bash-linux dircolors i3 tmux fonts linux-config
	@stow -t ~ $(POLYBAR_CONFIG)
	@stow -t ~/DesktopBackgrounds desktop-backgrounds
	@stow -t ~/scripts scripts
	@stow -t ~/.local/share desktop

.PHONY: unstow
unstow:
	@stow -D -t ~ alacritty compton dunst kitty neovim termite vim bash-linux dircolors i3 tmux fonts linux-config
	@stow -D -t ~ $(POLYBAR_CONFIG)
	@stow -D -t ~/DesktopBackgrounds desktop-backgrounds
	@stow -D -t ~/scripts scripts
	@stow -D -t ~/.local/share desktop

.PHONY: gitconfig
gitconfig:
	@cp ~/.gitconfig ~/.old-gitconfig
	@sed -i 's/^\s*//g' ~/.gitconfig
	@crudini --merge ~/.gitconfig < ./git/aliases.ini
