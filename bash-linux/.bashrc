# ~/.bashrc

# Command Prompt
export CLICOLOR=1
export LSCOLORS=gxGxFxdxbxDxDxBxBxExEx
if [ -e "/usr/share/git-core/contrib/completion/git-prompt.sh" ]; then
  source "/usr/share/git-core/contrib/completion/git-prompt.sh"
  export PS1='[\h \[\e[1;36m\]\W\[\e[m\]$(declare -F __git_ps1 &>/dev/null && __git_ps1 " \[\e[1;32m\](%s)\[\e[m\]")]\$ '
else
  export PS1='[\h \[\e[1;36m\]\W\[\e[m\]]\$ '
fi

# Vim +clipboard
alias vim='vimx'

# Go
PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/workspace/go
PATH=$PATH:$GOPATH/bin

# Kubectl configs
export KUBECONFIG=$(find $HOME/.kube/configs/* 2> /dev/null | paste -s -d:)

# Google Cloud
# Updates PATH for the Google Cloud SDK.
export GCLOUD_PATH="/home/dghubble/sources/google-cloud-sdk/path.bash.inc"
[[ -s $GCLOUD_PATH ]] && source $GCLOUD_PATH
# Enables shell command completion for gcloud.
export GCLOUD_COMPLETION="/home/dghubble/sources/google-cloud-sdk/completion.bash.inc"
[[ -s $GCLOUD_COMPLETION ]] && source $GCLOUD_COMPLETION

# bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# SSH should use gpg-agent socket
#gpg-connect-agent /bye
#export SSH_AUTH_SOCK=$HOME/.gnupg/S.gpg-agent.ssh
#export SSH_AUTH_SOCK=/run/user/$(id -u)/gnupg/S.gpg-agent.ssh
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# See man gpg-agent
GPG_TTY=$(tty)
export GPG_TTY

# source system-wide bashrc (terminal colors, etc.)
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi
