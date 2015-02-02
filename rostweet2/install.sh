#!/bin/bash

clear
echo "INSTALLER FILE FOR twitcurl LIBRARY by SWATKAT"
echo $"https://code.google.com/p/twitcurl/\n"

echo "CHECKING IF twitcurl ALREADY INSTALLED"
exists=$(ldconfig -p | grep twitcurlsdfd)
if [ -z "$exists" ]; then
	echo "twitcurl LIBRARY NOT INSTALLED. INSTALLING NOW..."
	sudo apt-get install libcurl4-gnutls-dev
	sudo apt-get install subversion
	echo ""
	echo "---- NOW DOWNLOADING twitcurl LIBRARY ----"
	svn co https://twitcurl.googlecode.com/svn/trunk/libtwitcurl
	cd libtwitcurl
	curr_path="CURRENT PATH IS "
	get_path=$(pwd)
	curr_path="$curr_path $get_path"
	echo $curr_path
	echo ""
	echo "NOW BUILDING twitcurl LIBRARY..."
	echo ""
	make
	sudo cp libtwitcurl.so.1.0 /usr/lib/libtwitcurl.so.1
	echo $"\n\n ---- (Hopefully) Completed Installation ----"
	exit
else
	echo "twitcurl LIBRARY INSTALLED. EXITING..."
	exit
fi