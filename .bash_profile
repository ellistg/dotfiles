export LIBVIRT_DEFAULT_URI=qemu:///system
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/opt/texlive/2022/bin/x86_64-linux"


[ -f $HOME/.bashrc ] && . $HOME/.bashrc

if [ "$(tty)" == "/dev/tty1" ]; then
	exec startx
fi
