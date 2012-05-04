set-terminal-title
==================

A simple bash script to be able to set the Terminal title from a simple command.

To "install":

1. Append the contents of setTitle.sh to your .bashrc file:

    cat setTitle.sh >> ~/.bashrc

2. Source your .bashrc file:

	. ~./bashrc


To Use:

     st [TITLE] 

	If the TITLE option is not provided, the title will be set to the absolute path of the current directory, (the result of a 'pwd' command).

  TITLE - Just the string representation of the title you wish to use.


