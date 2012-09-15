install:
	echo "Installing current version to system..."
	cp vimrc ~/.gvimrc 
	ln -s ~/.gvimrc ~/.vimrc
	cp -r vim ~/.gvim	
	ln -s ~/.gvim ~/.vim

update:
	echo "Copying current system version to this repository..."
	cp ~/.gvimrc vimrc
	cp -r ~/.gvim vim
