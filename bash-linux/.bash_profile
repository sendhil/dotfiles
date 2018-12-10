# ~/.bash_profile 
# Login shells looks for ~/.bash_profile, ~/.bash_login, and ~/.profile and
# read and execute the *first* one that is readable. Non-login shells read
# and execute ~/.bashrc only.
# Not that, unlike Linux, OSX terminal applications start login shells.

# ~/.bashrc
if [ -s ~/.bashrc ]; then
  . ~/.bashrc
fi
