# .extra stores information which should not be public
for file in ~/.{bash_prompt,aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file

# colorizer
GRC=`which grc`
if [ "$TERM" != dumb ] && [ -n "$GRC" ]
    then
        alias colourify="$GRC -es --colour=auto"
        alias configure='colourify ./configure'
        for app in {ps,diff,ping,traceroute}; do
            alias "$app"='colourify '$app
    done
fi

# highlighting inside manpages and elsewhere
# begin blinking
export LESS_TERMCAP_mb=$'\E[01;31m'
# begin bold
export LESS_TERMCAP_md=$'\E[01;38;5;74m'
# end mode
export LESS_TERMCAP_me=$'\E[0m'
# end standout-mode
export LESS_TERMCAP_se=$'\E[0m'
# begin standout-mode - info box
export LESS_TERMCAP_so=$'\E[38;5;246m'
# end underline
export LESS_TERMCAP_ue=$'\E[0m'
# begin underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m'

# history
# https://unix.stackexchange.com/questions/18212/bash-history-ignoredups-and-erasedups-setting-conflict-with-common-history
# no duplicate entries
export HISTCONTROL="erasedups:ignoredups"
# big big history
export HISTSIZE=100000
# big big history
export HISTFILESIZE=$HISTSIZE
# append to history, don't overwrite it
type shopt &> /dev/null && shopt -s histappend
# additional history enhancements
export PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"
# don't record some commands in history
export HISTIGNORE="&:[ ]*:exit::ls:bg:fg:history:clear"
# save multi-line commands as one command
shopt -s cmdhist

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# tmux
export TERM="screen-256color"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# start cron service
sudo service cron start

# fix directory background colors
LS_COLORS="ow=01;36;40"
export LS_COLORS

# set external display
export DISPLAY=:0

# screen
export SCREENDIR=$HOME/.screen

# nvm
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# n
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# disable loading Windows PATH, add custom paths
PATH=$(/usr/bin/printenv PATH | /usr/bin/perl -ne 'print join(":", grep { !/\/mnt\/[a-z]/ } split(/:/));'):$HOME/.yarn/bin
