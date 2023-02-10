#!/usr/bin/env bash

if [ $EUID -eq 0 ]; then
    echo "This script should not be run as root"
    exit
fi

mkdir -p $HOME/.local/share/todo/notes
cp todo $HOME/.local/bin/todo
chmod 755 $HOME/.local/bin/todo

echo -n "What shell do you have?[bash/zsh/Cancel] "
read shell
case $shell in
    "zsh")
        echo -n 'export TODO_DIR="$HOME/.local/share/todo/notes"' >> $HOME/.zshrc
	echo -n 'export TODO_DEFAULT=$(date +%Y.%m.%d.md)' >> $HOME/.zshrc

        ;;
    "bash")
        echo -n 'export TODO_DIR="$HOME/.local/share/todo/notes"' >> $HOME/.bashrc
	echo -n 'export TODO_DEFAULT=$(date +%Y.%m.%d.md)' >> $HOME/.bashrc
        ;;
    "cancel")
	echo "EXiting..."
	;;
    *)
        echo "Sorry, not understood or shell not supported by this install script.
        you will need to set the '\$TODO_HOME' variable yourself"
        ;;
esac
