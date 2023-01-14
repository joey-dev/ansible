FROM manjarolinux/base
ARG TAGS
WORKDIR /usr/local/bin
#RUN pacman -Syu --noconfirm pamac-cli
#RUN pacman -Syyu
RUN pacman -S --noconfirm ansible
COPY . .
#CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
