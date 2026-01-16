FROM ubuntu:24.04@sha256:7a398144c5a2fa7dbd9362e460779dc6659bd9b19df50f724250c62ca7812eb3

ARG USERNAME=zsh-user

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        bash \
        fontconfig \
        sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash "$USERNAME" \
    && usermod -aG sudo "$USERNAME" \
    && passwd -d "$USERNAME"

USER $USERNAME
WORKDIR /home/$USERNAME

COPY --chown=$USERNAME:$USERNAME . /home/$USERNAME/zsh

RUN chmod +x /home/$USERNAME/zsh/install.sh \
    && /home/$USERNAME/zsh/install.sh

CMD ["zsh"]
