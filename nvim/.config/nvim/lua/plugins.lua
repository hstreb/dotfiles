local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return packer.startup(function()
    use "wbthomason/packer.nvim"                                    --> packer plugin manager
    use "nvim-lua/plenary.nvim"                                     --> lua functions
    use "kyazdani42/nvim-web-devicons"                              --> enable icons
    use "kyazdani42/nvim-tree.lua"                                  --> file explorer
    use "nvim-lualine/lualine.nvim"                                 --> a statusline written in lua
    use "akinsho/bufferline.nvim"                                   --> tabs for neovim
    use "windwp/nvim-autopairs"                                     --> autopairs for neovim written in lua
    use "moll/vim-bbye"                                             --> close tabs command
    use "akinsho/toggleterm.nvim"                                   --> toggle a terminal
    use "folke/which-key.nvim"                                      --> display key mappings

    -- colorschemes
    use "EdenEast/nightfox.nvim"                                    --> nightfox colorscheme
    use "markvincze/panda-vim"                                      --> panda colorscheme
    use "martinsione/darkplus.nvim"                                 --> darkplus colorscheme
end)
