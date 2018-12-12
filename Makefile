.PHONY: all
all: stow

.PHONY: stow
stow:
	@mkdir -p ~/DesktopBackgrounds
	@stow -t ~ alacritty compton dunst kitty neovim termite vim bash-linux dircolors i3 polybar tmux fonts linux-config
	@stow -t ~/DesktopBackgrounds desktop-backgrounds
	@stow -t ~/.local/share desktop

.PHONY: unstow
unstow:
	@stow -D -t ~ alacritty compton dunst kitty neovim termite vim bash-linux dircolors i3 polybar tmux fonts linux-config
	@stow -D -t ~/DesktopBackgrounds desktop-backgrounds
	@stow -D -t ~/.local/share desktop
