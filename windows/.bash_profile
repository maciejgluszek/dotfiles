# load additional dotfiles
for file in ~/.{bash_prompt,aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file

# history
# https://unix.stackexchange.com/questions/18212/bash-history-ignoredups-and-erasedups-setting-conflict-with-common-history
#
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
export HISTIGNORE="&:[ ]*:exit::ls:history:clear:cl"
# save multi-line commands as one command
shopt -s cmdhist