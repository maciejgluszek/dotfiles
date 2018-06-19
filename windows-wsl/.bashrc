[ -n "$PS1" ] && source ~/.bash_profile

# if launched in terminal start in home directory
if [ -t 1 ]; then
    cd ~
fi