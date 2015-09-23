# Aliases
alias cd..="cd .."
alias screenshot="xfce4-screenshooter -r -s ~/Pictures/screenshots/"

# Settings for git prompt
source ~/.git-prompt.sh
source ~/.git-completion.bash

# My PS1
export PS1="$(tput bold)$(tput setaf 2)\u@\h$(tput setaf 6):\W$(tput setaf 3)\$(__git_ps1)$(tput setaf 6) \$ $(tput sgr0)"

# Autojump
# see https://github.com/wting/autojump and install manually
[[ -s $HOME/.autojump/etc/profile.d/autojump.sh  ]] && source $HOME/.autojump/etc/profile.d/autojump.sh

# Base16 Shell
# see https://github.com/chriskempson/base16-shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-tomorrow.dark.sh"
[[ -s $BASE16_SHELL  ]] && source $BASE16_SHELL
