# Intro
This is an script I personally use to download all the program's I use.


## Quick Start
Start (add --skip-tags "ssh", to the first command if you want another ssh key):
- ansible-playbook --tags "Install" local.yml --ask-become-pass --ask-vault-pass
- ./install.sh
- ansible-playbook --tags "Zsh" local.yml --ask-become-pass

use --skip-tags to remove some tags, when using 'Install' like:
--skip-tags "Personal"

## Test using a docker container?
Make sure you have docker installed, then run:
- docker run --rm -it nvim-computer bash


## All tags:
- Install : This installs every program, and sets them up
- Update : This updates all programs, does no setup at all
- Personal : This set ups all personal things, like ssh and git config
- Core : Installs all the core programs
- Chrome : Installs chrome
- Stow : Installs stow and updates dotfiles
- Dotfiles : Clones dotfiles repo, and stows the to the correct place
- Node : Installs NPM, Node, and Typescript programs
- Ssh : Updates Ssh with personal SSH (need to use --ash-vault-pass)
- Zsh : Installs Zsh, with plugins (currently cannot auto install Oh-My-Zsh, use ./install.sh like in quickstart)
- Zsh_plugins : Installs Zsh plugins
- Git_personal : Configures personal git
- Php : Installs PHP

