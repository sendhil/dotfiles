.PHONY: all
all: stow

.PHONY: stow
stow:
	@stow -t ~ i3

.PHONY: unstow
unstow:
	@stow -D -t ~ i3
