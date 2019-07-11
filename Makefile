POLYBAR_CONFIG := $(shell ./non-linked-scripts/determine-polybar-config.sh)
HOME_DIRECTORY := $(shell ./non-linked-scripts/get-user-home-directory.sh)

.PHONY: all
all: stow gitconfig

.PHONY: stow
stow:
	@mkdir -p ~/DesktopBackgrounds
	@mkdir -p ~/scripts
	@stow -t ~ alacritty compton dunst kitty neovim termite vim bash-linux dircolors i3 tmux fonts linux-config gcalcli bat coc
	@stow -t ~ $(POLYBAR_CONFIG)
	@stow -t ~/DesktopBackgrounds desktop-backgrounds
	@stow -t ~/scripts scripts
	@stow -t ~/.local/share desktop

.PHONY: unstow
unstow:
	@stow -D -t ~ alacritty compton dunst kitty neovim termite vim bash-linux dircolors i3 tmux fonts linux-config gcalcli bat coc
	@stow -D -t ~ $(POLYBAR_CONFIG)
	@stow -D -t ~/DesktopBackgrounds desktop-backgrounds
	@stow -D -t ~/scripts scripts
	@stow -D -t ~/.local/share desktop

.PHONY: gitconfig
gitconfig:
	@cp ~/.gitconfig ~/.old-gitconfig
	@sed -i 's/^\s*//g' ~/.gitconfig
	@crudini --merge ~/.gitconfig < ./git/aliases.ini

.PHONY: prestow
prestow:
	@./non-linked-scripts/clear-out-files-before-stow.sh

.PHONY: install-backup-scripts
install-backup-scripts:
	@ln -sf "$(HOME_DIRECTORY)/scripts/backup_todo.sh" /etc/cron.daily/backup_todo.sh
	@ln -sf "$(HOME_DIRECTORY)/scripts/backup_lyft_notes.sh" /etc/cron.daily/backup_lyft_notes.sh
	@ln -sf "$(HOME_DIRECTORY)/scripts/backup_notes.sh" /etc/cron.daily/backup_notes.sh
	@ln -sf "$(HOME_DIRECTORY)/scripts/clear_backups_older_than_one_week.sh" /etc/cron.daily/clear_backups_older_than_one_week.sh
