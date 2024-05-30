if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

set -x PATH $PATH /opt/nvim-linux64/bin

alias cat='bat --style header --style rule --style snip --style changes --style header'
alias ip="ip -color"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'

# Recent installed packages
alias rpkgs="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

set -x BUN_INSTALL $HOME/.bun
fish_add_path $BUN_INSTALL/bin
