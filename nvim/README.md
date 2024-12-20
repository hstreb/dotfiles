# nvim

Neovim é um fork do vim com foco em extensibilidade e usabilidade https://github.com/neovim/neovim.

## Instalação do nvim

```sh
wget https://github.com/neovim/neovim/releases/download/v0.10.2/nvim-linux64.tar.gz
tar -svf nvim-linux.tar.gz -C ~/tools
ln -s ~/tools/nvim-linux64/bin/nvim ~/.local/bin/nvim
```

## dependências

- ajustar copiar e colar
  ```sh
  sudo apt install wl-clipboard
  ```

- suporte a python

  ```sh
  pip install pynvim
  ```

- suporte a node

  ```sh
  npm i -g neovim
  ```

- Ripgrep para Telescope

  ```sh
  sudo apt install ripgrep
  ```

- fonte **JetBrains Mono Regular Nerd Font** https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.ttf

## aplicar configurações

- clone do repositorio
```sh
git clone https://github.com/hstreb/dotfiles.git ~/.dotfiles
```

- aplicar configs do nvim
```sh
ln -s ~/.dotfiles/nvim ~/.config
```
