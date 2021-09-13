## Aliases for .bashrc. To use add the following lines to .bashrc
#
#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi
#################################################################

## Modified command (check for conflicts with .bashrc)
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lr='ls -R'	# recursive ls
alias lx='ll -BX'	# sort by extension
alias lt='ll -rt'	# sort by date
alias lz='ll -rS'	# sort by size
alias lm='la | more'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias ping='ping -c 5'
alias more='less'
alias cd..='cd ..'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

## Safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'

## New commands
alias speedtest='speedtest-cli'
alias inxiful='inxi -Fxxx'
alias off='shutdown now'
alias ..='cd..'
alias dunstoff='killall -SIGUSR1 dunst'
alias dunston='killall -SIGUSR2 dunst'

## External monitors
alias monhi='xrandr --output HDMI-1 --pos 0x0 --primary --mode 1920x1080 --rate 60 --dpi 141 --scale 1.4x1.4 --output eDP-1 --pos 2688x0'
alias monlow='xrandr --output HDMI-1 --pos 0x0 --primary --mode 1920x1080 --rate 60 --output eDP-1 --pos 1920x0'

## Kitty terminal
alias imagen='kitty +kitten icat'
alias diff='kitty +kitten diff'

## System update and packages (adapt according to base system)
# Debian
alias nupdate='sudo apt update && sudo apt upgrade'
# Arch
alias instalar='sudo pacman -S'
alias remover='sudo pacman -Rns'
alias actualizar='sudo pacman -Syu'
alias yactualizar='yay -Syu'
alias buscar='pacman -Ss'
alias listar='pacman -Qs'
alias orphans='sudo pacman -Qtdq | sudo pacman -Rns -'

## Proton vpn client
alias vpnupdate='sudo pip3 install protonvpn-cli --upgrade'
alias vpnconnect='sudo protonvpn c -f'
alias vpnsc='sudo protonvpn c --sc'
alias vpntor='sudo protonvpn c --tor'
alias vpnreconnect='sudo protonvpn r'
alias vpncountry='sudo protonvpn connect --c'
alias vpndisconnect='sudo protonvpn d'

