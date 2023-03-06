# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

rmdir ~/Desktop 2>/dev/null

alias ls='ls --color=auto -F'
alias la='ls -AlF --color=auto'
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
alias ssh='TERM=xterm-256color ssh'
alias gdb="gdb -q"
alias readelf="readelf --wide"

export GPG_TTY=$(tty)


export PS1="\[\e[31m\][\[\e[m\] \[\e[33m\]\u\[\e[m\]\[\e[31m\]@\[\e[m\]\[\e[33m\]\h\[\e[m\] \[\e[33m\]\W\[\e[m\] \[\e[31m\]]\[\e[m\]\[\e[33m\]\\$\[\e[m\] "

export _JAVA_AWT_WM_NONREPARENTING=1

port() {
    grep "\b$1\b" /etc/services
}

remove_background() {
    convert $1 -transparent white -trim +repage $1
}

recon() {
    xrandr --auto
    xrandr --output HDMI-A-0 --left-of eDP
		setxkbmap gb
		feh --bg-scale ~/.config/wallpaper.jpg

}

copy() {
xclip -selection clipboard -t image/png -i $1
}

 export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
 [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export MANPATH="$MANPATH:$HOME/.local/man"

