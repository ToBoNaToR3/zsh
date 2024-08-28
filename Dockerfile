FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y sudo bash fontconfig && \
    apt-get clean

ARG USERNAME=zsh-user

RUN useradd -m -s /bin/bash $USERNAME && \
    usermod -aG sudo $USERNAME && \
    passwd -d $USERNAME  # Delete the password for the user

COPY . /home/$USERNAME/zsh
RUN chown -R $USERNAME:$USERNAME /home/$USERNAME/zsh && \
    chmod +x /home/$USERNAME/zsh/install.sh

USER $USERNAME
WORKDIR /home/$USERNAME

RUN /home/$USERNAME/zsh/install.sh

CMD ["zsh"]
