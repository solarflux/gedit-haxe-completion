#!/bin/sh

TARGET=""

LANGSPEC_DIR="/usr/share/gtksourceview-2.0/language-specs/"
LANGSPEC_FILE="haxe.lang"

MIME_DIR="/usr/share/mime/packages/"
MIME_FILE="haxe.xml"

if [ `whoami` = 'root' ]; then
	TARGET="/usr/lib/gedit-2/plugins"
	echo "Installation as root"
else
	TARGET="$HOME/.gnome2/gedit/plugins"
	mkdir -p "$TARGET"
	echo "Installation as user"
fi

echo "Installing haxe completion plugin in $TARGET"

if [ `whoami` != "root" ]; then
	echo
	echo " !! Execute the installation as root or with sudo to install the syntax file"
fi

if [ ! -f "$LANGSPEC_DIR/$LANGSPEC_FILE" ]; then
	echo "Installing the syntax file"
fi

if [ ! -f "$MIME_DIR/$MIME_FILE" ]; then
	echo "Installing the mime type file"

	echo "Refreshing mime-types"

fi
