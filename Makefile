install: install-vim install-sublime-text-2 install-konsole install-dotfiles

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-sublime-text-2:
	rm -rf ~/.config/sublime-text-2/Packages/User ~/.config/sublime-text-2/Packages/SublimeBlockCursor
	ln -s `pwd`/sublime-text-2 ~/.config/sublime-text-2/Packages/User
	ln -s `pwd`/sublime-text-2/SublimeBlockCursor ~/.config/sublime-text-2/Packages/SublimeBlockCursor

install-konsole:
	rm -rf ~/.kde/share/apps/konsole/ignacy.colorscheme ~/.kde/share/apps/konsole/Default.profile
	ln -s `pwd`/konsole/ignacy.colorscheme ~/.kde/share/apps/konsole/ignacy.colorscheme
	ln -s `pwd`/konsole/Default.profile ~/.kde/share/apps/konsole/Default.profile

install-dotfiles:
	rm -rf ~/.bash_aliases ~/.gitconfig
	ln -s `pwd`/bash_aliases ~/.bash_aliases
	ln -s `pwd`/gitconfig ~/.gitconfig

