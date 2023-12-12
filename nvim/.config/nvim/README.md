# nvim

Neovim é um fork do vim com foco em extensibilidade e usabilidade https://github.com/neovim/neovim.

## Instalação 

```sh
wget https://github.com/neovim/neovim/releases/download/v0.9.4/nvim-linux64.tar.gz
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

## Plugins

- 

## TODO

- dap debug
