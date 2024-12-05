FROM archlinux:base-devel-20241201.0.284684

ENV LANG=es_ES.UTF-8
ENV LANGUAGE=es_ES:es
ENV TZ=Europe/Madrid

ARG UID=1000
ARG GID=1000

ENV USER adriannic
ENV HOME /home/adriannic

RUN groupadd -g $GID adriannic && useradd -g $GID -u $UID -m -s /bin/fish -l adriannic

EXPOSE 8080 8081 8082 8083 8084 8085

# Install packages
RUN pacman -Syu base-devel git neovim npm unzip rustup python wget ripgrep yarn nodejs fish lsd curl thefuck starship zoxide fastfetch fzf cmake gcc make --noconfirm --needed

USER $USER

# Clone repositories
RUN git clone https://github.com/adriannic/nvim-config/ ~/.config/nvim/ && git clone https://github.com/adriannic/dotfiles/ ~/dotfiles/ && cp -r ~/dotfiles/.config/fish ~/.config/ && rm -rf ~/dotfiles

# Setup rust
RUN rustup toolchain install stable && rustup default stable

# Setup workspace
RUN mkdir -p /home/adriannic/workspace

WORKDIR /home/adriannic/workspace

CMD ["tail", "-f", "/dev/null"]
