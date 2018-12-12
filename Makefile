.PHONY: all
all: stow

.PHONY: stow
stow:
	@stow -t ~ alacritty compton dunst kitty neovim termite vim bash-linux dircolors i3 polybar tmux
	@stow -t ~/DesktopBackgrounds/desktop desktop-backgrounds/desktop
	@stow -t ~/.local/share desktop

.PHONY: unstow
unstow:
	@stow -D -t ~ alacritty compton dunst kitty neovim termite vim bash-linux dircolors i3 polybar tmux
	@stow -D -t ~/DesktopBackgrounds/desktop desktop-backgrounds/desktop
	@stow -D -t ~/.local/share desktop
