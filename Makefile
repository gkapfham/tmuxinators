## Create the required directory for the tmuxinator {{{

## Delete and create the .tmuxinator/ directory to store all tmuxinator
delete-and-create-tmuxinator:
	rm -rf ~/.tmuxinator
	mkdir -p ~/.tmuxinator

## Create the .tmuxinator/ directory to store all tmuxinator
create-tmuxinator:
	mkdir -p ~/.tmuxinator

# }}}

## Define all of the stow commands for separate directories {{{

## Run stow for a package
stow-analyses:
	stow analyses -t ~/.tmuxinator

## Run stow for a package
stow-bibliographies:
	stow bibliographies -t ~/.tmuxinator

## Run stow for a package
stow-codes:
	stow codes -t ~/.tmuxinator

## Run stow for a package
stow-configurations:
	stow configurations -t ~/.tmuxinator

## Run stow for a package
stow-courses:
	stow courses -t ~/.tmuxinator

## Run stow for a package
stow-extras:
	stow extras -t ~/.tmuxinator

## Run stow for a package
stow-papers:
	stow papers -t ~/.tmuxinator

## Run stow for a package
stow-presentations:
	stow presentations -t ~/.tmuxinator

## Run stow for a package
stow-proposals:
	stow proposals -t ~/.tmuxinator

## Run stow for a package
stow-systems:
	stow systems -t ~/.tmuxinator

## Run stow for a package
stow-todo:
	stow todo -t ~/.tmuxinator

## Run stow for a package
stow-web:
	stow web -t ~/.tmuxinator

## Run stow for a package
stow-writings:
	stow writings -t ~/.tmuxinator

# }}}

## Composite rules {{{

## Run stow for all rules for all subdirectories that are stow-able
stow: stow-analyses stow-bibliographies stow-codes stow-configurations stow-courses stow-extras stow-papers stow-presentations stow-proposals stow-systems stow-todo stow-web stow-writings

## Create directories and stow all of the tmuxinator in correct directory
tmuxinators: create-tmuxinator stow

# }}}

## Help {{{

## Display a help message listing all tasks
help:
	make -rpn | sed -n -e '/^$$/ { n ; /^[^ .#][^ ]*:/ { s/:.*$$// ; p ; } ; }' | sort -u

# }}}

## Default {{{

## Specify that the default is full installation of the tmuxinator
.DEFAULT_GOAL := tmuxinators

# }}}
