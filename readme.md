Start (add --skip-tags "ssh", to the first command if you want another ssh key):
- ansible-playbook --tags "install,git-personal" local.yml --ask-become-pass --ask-vault-pass
- ./install.sh
- ansible-playbook --tags "zsh" local.yml --ask-become-pass


to pull: 
	all: ansible-playbook --tags "install,git-personal" local.yml --ask-become-pass --ask-vault-pass
	work: ansible-playbook --tags "install" --skip-tags "ssh" local.yml --ask-become-pass --ask-vault-pass


docker: docker run --rm -it nvim-computer bash



