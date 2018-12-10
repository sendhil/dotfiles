.PHONY: all
all: stow

.PHONY: stow
stow:
	@stow -t ~ alacritty compton dunst kitty neovim termite vim bash-linux dircolors i3 polybar tmux

.PHONY: unstow
unstow:
	@stow -D -t ~ alacritty compton dunst kitty neovim termite vim bash-linux dircolors i3 polybar tmux
