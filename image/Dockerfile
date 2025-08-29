FROM archlinux:base-devel

ENV LANG=es_ES.UTF-8
ENV LANGUAGE=es_ES:es
ENV TZ=Europe/Madrid

ARG _UID=1000
ARG _GID=1000

USER root

ENV USER adriannic
ENV HOME /home/adriannic

RUN groupadd -g $_GID adriannic && useradd -g $_GID -u $_UID -m -s /bin/fish -l adriannic

# Install packages
RUN pacman -Syu --noconfirm --needed base-devel cmake curl fastfetch fd fish fzf gcc gdb git go lazygit lldb lsd make neovim nodejs npm python ripgrep rustup starship unzip wget yarn zoxide 

USER $USER

# Clone repositories
RUN git clone https://github.com/adriannic/nvim-config/ ~/.config/nvim/ && git clone https://github.com/adriannic/dotfiles/ ~/dotfiles/ && cp -r ~/dotfiles/.config/fish ~/.config/ && rm -rf ~/dotfiles

# Setup rust
RUN rustup toolchain install stable && rustup default stable

# Setup workspace
RUN mkdir -p /home/adriannic/workspace

WORKDIR /home/adriannic/workspace

CMD ["tail", "-f", "/dev/null"]
