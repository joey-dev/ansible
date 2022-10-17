to pull: 
	all: ansible-playbook --tags "install,git-personal" local.yml --ask-become-pass --ask-vault-pass
	work: ansible-playbook --tags "install" --skip-tags "ssh" local.yml --ask-become-pass --ask-vault-pass


docker: docker run --rm -it nvim-computer bash



