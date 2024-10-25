# Dotfiles

Repositório utilizado para guardar as configurações das ferramentas utilizados em meu PC.

## ferramentas

- [alacritty](./alacritty/.config/alacritty) - emulador de terminal rápido que usa OpenGL
- [nvim](./nvim/.config/nvim) - editor de texto
- [tmux](./tmux/.config/tmux) - terminal multiplexer
- [zsh](./zsh/) - shell iterativo
- *bat* cat com syntax highlithing https://github.com/sharkdp/bat
- *autojump* utilitário para navegar por diretórios https://github.com/wting/autojump

## Configurar

1. baixar o repositório dotfiles

    ```shell
    git clone https://github.com/hstreb/dotfiles ~/.dotfiles
    ```

2. ajustar o alacritty

    ```shell
    ln -s ~/.dotfiles/alacritty ~/.config/alacritty
    ```

3. nvim

    3.1. aplicar as configurações

        ```shell
        ln -s ~/.dotfiles/nvim ~/.config/nvim
        ```

    3.2. ajustar o stylua

        ```shell
        ln -s ~/.dotfiles/stylua/stylua.toml ~/.config/
        ```

4. configurar o tmux

    ```shell
    ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
    ```

5. configurar o zsh

    ```shell
    ln -s ~/.dotfiles/zsh/.zshrc ~/
    ln -s ~/.dotfiles/zsh ~/.config/zsh
    ```

6. configurar o bat

    ```shell
    ln -s ~/.dotfiles/bat ~/.config/bat
    ```

# TODO

- melhorar documentação
    - explicar instalação de cada ferramenta e suas dependências
- nvim
    - adicionar suporte para debug
    - adicionar suporte para testes
- tmux
    - ajustar copy and paste
