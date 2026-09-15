# Lecture 1. : Terminal, Konsola.
## On macOS
On macOS, there is a built-in terminal application named Terminal.
The downloadable choices of the mainstreem are: iTerm2, Kitty, Alacritty.
To open up a terminal, press `Cmd + Space` and type "Terminal" followed by `Enter`.

iTerm2 gets daily updates.
If you like more features, use iTerm2.
Terminal rarely gets updates with new macOS releases.
If you are paranoid about security, use Termianal.

## Looking around...

The most first things you should know about are:
* whoami
* pwd
* ls
* cd
* mkdir
* rmdir
* touch
* rm
* which
* env
* echo
* hash

### whoami
Prints the username of the currently logged in user.

### pwd
Prints the current working directory.

### ls
Lists the contents of directories

### cd
Changes the current working directory.

### mkdir
Creates a new directory.

### rmdir
Removes an empty directory.

### touch
Creates a new file or updates the timestamp of an existing file.

### rm
Removes files or directories.

### which
Finds the location of a program.

### env
Prints the environment variables.

### echo
Prints a message to the standard output.

### hash
Exits successfully if the command is runable on the `PATH` directories.

## Other programs are:
* cat
* bash
* zsh
* fish
* git
* hx
* vi
* vim

### cat
Concatenates files and prints them to the standard output.

### bash
The low-level shell.

### zsh
The high-level shell.

### fish
The friendly high-level shell.

### git
The version control system.

### hx
The modern editor.

### vi
The classic server editor.

### vim
The moderninzed server editor.

## Important environment variables are:
* $HOME
* $PATH
* $USER
* $PWD
* $EDITOR

### $HOME
The directories of any user.
Gets created with user creation.
Gets deleted with user deletion.
Programs read from directories like `.config`, `.local`, `.ssh`.

### $PATH
The array of bin directories.
In old style shells it is a colon-separated list, e.g.:
`/usr/local/bin:/usr/bin:/bin`
In modern shells like fish it is a string array, e.g.:
`set PATH /usr/local/bin /usr/bin /bin`

### $USER
The username of the current user.
Same as `whoami`

### $PWD
The current working directory.

### $EDITOR
The editor to use for text editing.
We will be using `hx`.
