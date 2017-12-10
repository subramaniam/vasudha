#~/bin/sh

FILE_NAME=~/.vasudha_firstrun

echo "run this script the first time you setup a new system...\nThe $USER must have sudo rights!!!!!"


if [ ! -f $FILE_NAME  ]; then

	echo "configuring your system"
	echo "adding $USER to the dialout group"
	sudo usermod -a -G dialout $USER
	#install vim, gvim and cscope
	echo "installing vim, gvim and cscope byobu"
	sudo apt-get install vim-gtk cscope byobu meld

	./copy_files.sh

	#append ~/bin to $PATH
	if ! grep -q "PATH=~/bin" ~/.bashrc; then
		echo "export PATH=~/bin:$PATH" >> ~/.bashrc
	fi


	touch $FILE_NAME
	echo "make sure you log off and log back in"
else
   echo $FILE_NAME "already exists..."
   echo "looks like the system has already been configured!!"
fi
