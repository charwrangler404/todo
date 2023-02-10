todo version 0.3

todo is a simple todo list manager that operates on text files
stored in $HOME/.local/share/todo/notes by default, although
this behavior can be modified by changing the $TODO_DIR variable.

The main design goal of this project is to create a simple, easy
to use, and cross-*nix platform compatibility. The software should
use as few progams or libraries as possible, to keep portability
high. As such, the design decision to use shell scripts made the
most sense.

Changelog:

02.10.2023 - Added capability to add single lines to the default list
02.10.2023 - Added capability to list todo list files
02.10.2023 - Added capability to remove todo list files
