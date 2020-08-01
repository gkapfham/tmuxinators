## Create the required directory for the tmuxinators {{{

## Delete and create the .tmuxinators/ directory to store all tmuxinators
delete-and-create-tmuxinators:
	rm -rf ~/.tmuxinators
	mkdir -p ~/.tmuxinators

## Create the .tmuxinators/ directory to store all tmuxinators
create-tmuxinators:
	mkdir -p ~/.tmuxinators

# }}}

## Define all of the stow commands for separate directories {{{

## Run stow for a package
stow-analyses:
	stow analyses -t ~/.tmuxinators

## Run stow for a package
stow-bibliographies:
	stow bibliographies -t ~/.tmuxinators

## Run stow for a package
stow-codes:
	stow codes -t ~/.tmuxinators

## Run stow for a package
stow-configurations:
	stow configurations -t ~/.tmuxinators

## Run stow for a package
stow-courses:
	stow courses -t ~/.tmuxinators

## Run stow for a package
stow-extras:
	stow extras -t ~/.tmuxinators

## Run stow for a package
stow-papers:
	stow papers -t ~/.tmuxinators

## Run stow for a package
stow-presentations:
	stow presentations -t ~/.tmuxinators

## Run stow for a package
stow-proposals:
	stow proposals -t ~/.tmuxinators

## Run stow for a package
stow-systems:
	stow systems -t ~/.tmuxinators

## Run stow for a package
stow-todo:
	stow todo -t ~/.tmuxinators

## Run stow for a package
stow-web:
	stow web -t ~/.tmuxinators

## Run stow for a package
stow-writings:
	stow writings -t ~/.tmuxinators

# }}}

## Composite rules {{{

## Run stow for all rules for all subdirectories that are stow-able
stow: stow-analyses stow-bibliographies stow-codes stow-configurations stow-courses stow-extras stow-papers stow-presentations stow-proposals stow-systems stow-todo stow-web stow-writings

## Create directories and stow all of the tmuxinators in correct directory
tmuxinators: create-tmuxinators stow

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
