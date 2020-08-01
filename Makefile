## Create the required directory for the tmuxinators {{{

## Create the .tmuxinators/ directory to store all tmuxinators
delete-and-create-tmuxinators:
	rm -rf ~/.tmuxinators
	mkdir -p ~/.tmuxinators

# }}}

## Define all of the stow commands for separate directories {{{

## Run stow for a package
stow-analyses:
	stow analyses -t ~/.tmuxinators

# }}}

## Composite rules {{{

## Run stow for all rules for all subdirectories
stow: stow-analyses

## Create directories and stow all of the tmuxinators in correct directory
tmuxinators: delete-and-create-tmuxinators stow

# }}}

## Help {{{

## Display a help message listing all tasks
help:
	make -rpn | sed -n -e '/^$$/ { n ; /^[^ .#][^ ]*:/ { s/:.*$$// ; p ; } ; }' | sort -u

# }}}

## Default {{{

## Specify that the default is full installation of the tmuxinators
.DEFAULT_GOAL := tmuxinators

# }}}
