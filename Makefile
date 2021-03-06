install: install-vim install-sublime-text-2 install-konsole install-dotfiles install-vagrant-d

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-sublime-text-2:
	rm -rf ~/.config/sublime-text-2/Packages/User
	ln -s `pwd`/sublime-text-2 ~/.config/sublime-text-2/Packages/User

install-konsole:
	rm -rf ~/.kde/share/apps/konsole/ignacy.colorscheme ~/.kde/share/apps/konsole/Default.profile
	ln -s `pwd`/konsole/ignacy.colorscheme ~/.kde/share/apps/konsole/ignacy.colorscheme
	ln -s `pwd`/konsole/Default.profile ~/.kde/share/apps/konsole/Default.profile

install-dotfiles:
	rm -rf ~/.bashrc ~/.bash_aliases ~/.bash_completion ~/.inputrc ~/.gitconfig ~/.htoprc
	ln -s `pwd`/bashrc ~/.bashrc
	ln -s `pwd`/bash_aliases ~/.bash_aliases
	ln -s `pwd`/bash_completion ~/.bash_completion
	ln -s `pwd`/inputrc ~/.inputrc
	ln -s `pwd`/gitconfig ~/.gitconfig
	ln -s `pwd`/htoprc ~/.htoprc

install-vagrant-d:
	rm -rf ~/.vagrant.d/Vagrantfile
	mkdir -p ~/.vagrant.d
	ln -s `pwd`/vagrant.d/Vagrantfile ~/.vagrant.d/Vagrantfile
