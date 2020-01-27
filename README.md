# tmuxinators

This repository contains the Tmuxinator configuration files used to setup Tmux
sessions for all of the research papers, presentations, and software
development projects of [Gregory M.
Kapfhammer](https://www.gregorykapfhammer.com/). If you would like to
learn more about Tmuxinator, then please visit the
[Tmuxinator](https://github.com/tmuxinator/tmuxinator) site. Essentially,
Tmuxinator allows you to write configuration files that support the quick and
repeatable setup of a well-structured Tmux session. If you are new to Tmux and
the joys of using a "terminal multiplexor", then please visit the
[Tmux](https://tmux.github.io/) site and do some reading of the many online
articles about this tool. Please note that all of the Tmuxinators in this
repository are "hard-coded" to work for my development environment and
projects. Even though they are heavily customized, my hope is that they will
give examples of different facets of Tmuxinator (e.g., the layout specification
strings).

## Installation Instructions

You can type the following command if you want to clone this repository:

```shell
git clone https://github.com/gkapfham/tmuxinators.git
```

Now, you can type `cd tmuxinators` and start to browse the Tmuxinator
configuration files that are available. I suggest that you make symbolic links
from the `.tmuxinator` directory to this repository if you want to create and
use these configuration files in a disciplined fashion. For example, when you
type the following command in the `.tmuxinator` directory, it will make a
symbolic link to the `Weechat.yml` file that is in this repository that is
stored inside of the `configure` directory.

```shell
ln -s /home/gkapfham/configure/tmuxinators/systems/Weechat.yml Weechat.yml
```

This repository is also setup to take advantage of the `stow` command for
automatically creating the symbolic links in the specified `.tmuxinator`
directory. For instance, typing the following command would create all the
symbolic links for the Tmuxinators in the `papers` directory.

```shell
stow papers -t ~/.tmuxinator
```

## Problems or Praise

If you have any problems with using these Tmuxinator configuration files, then
please raise an issue associated with this Git repository using the "Issues"
link at the top of this site. As the sole contributor to the `tmuxinator`
repository, I will do everything possible to resolve your issue and ensure that
all of the Tmuxinator configurations are clear and, potentially, best suited to
working in your development environment. Remember, this repository is being made
publicly available so as to provide examples of how to write Tmuxinator
configurations. If you find that these files help you in preparing your own
Tmuxinator configurations, then I also encourage you to "star" and "watch" this
project!
