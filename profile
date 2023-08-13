# make qemu work
export LIBVIRT_DEFAULT_URI=qemu:///system

[ -f $HOME/.bashrc ] && . $HOME/.bashrc

if [ "$(tty)" == "/dev/tty1" ]; then
	exec startx
fi
