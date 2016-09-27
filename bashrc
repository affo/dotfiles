# locale
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Aliases
alias cd..="cd .."
alias screenshot="xfce4-screenshooter -r -s ~/Pictures/screenshots/"
alias display_polimi="
    xrandr --output HDMI1 --off --output LVDS1 --mode 1366x768 --pos 0x1148 \
    --rotate normal --output VIRTUAL1 --off --output DP1 --off --output VGA1 --mode \
    1920x1080 --pos 1366x0 --rotate left"

# Settings for git prompt
source ~/.git-prompt.sh
source ~/.git-completion.bash

# My PS1
export SHORT_PS1=1

function __branch_str {
    r="$(__git_ps1)"
    if [[ $SHORT_PS1 -eq 0 ]] && [[ -n "$r" ]]; then
        r=' ()'
    fi

    echo "$r"
}

function reset_ps1 {
    export SHORT_PS1=1
    export PS1="$(tput bold)$(tput setaf 2)\u@\h$(tput setaf 6):\W$(tput setaf 3)\$(__branch_str)$(tput setaf 6) \$ $(tput sgr0)"
}

function short_ps1 {
    export SHORT_PS1=0
    export PS1="$(tput bold)$(tput setaf 6)\W$(tput setaf 3)\$(__branch_str)$(tput setaf 6) \$ $(tput sgr0)"
}

reset_ps1

# Autojump
# see https://github.com/wting/autojump and install manually
[[ -s $HOME/.autojump/etc/profile.d/autojump.sh  ]] && source $HOME/.autojump/etc/profile.d/autojump.sh

# Base16 Shell
# see https://github.com/chriskempson/base16-shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-tomorrow.dark.sh"
[[ -s $BASE16_SHELL  ]] && source $BASE16_SHELL

# Colors
export CLICOLOR=1
LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export LSCOLORS
