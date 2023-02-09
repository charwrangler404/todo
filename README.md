# todo

This is a small script to manage your todo list.

Usage:
    todo
        print your todo lists
    todo ls
        list your todo list files
    todo rm <file>
        remove a file from your todo list
    todo ed <file>
        edit a file or create a new one

To install:

    chmod 755 install.sh
    ./install.sh

Answer the prompt about your shell (currently suppported shells are zsh and bash) and
it will copy stuff to the right places.

If ~/.local/bin is not in your path, you will need to manually add it to the end.
All notes are stored in `~/.local/share/todo/notes`, but this is easily changeable by
setting the $TODO_DIR variable in your shell rc file.