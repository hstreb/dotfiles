# configurações do nvim

Usa o plugin manager https://github.com/wbthomason/packer.nvim e lua para configuração.

## Instalar o nvim

```sh
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout release-0.7
make CMAKE_BUILD_TYPE=Release
sudo make install
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

- lsp
- cmp
- treesitter
- comment
