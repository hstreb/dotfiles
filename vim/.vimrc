if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

call plug#end()

set number
syntax on

colorscheme codedark

hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
