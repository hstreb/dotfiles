local status_ok, wk = pcall(require, "which-key")
if not status_ok then
	return
end

wk.setup {
  plugins = {
    marks = false,
    registers = false,
    spelling = { enabled = false, suggestions = 20 },
    presets = {
      operators = false,
      motions = false,
      text_objects = false,
      windows = false,
      nav = false,
      z = false,
      g = false
    }
  }
}

local mappings = {
  q = { ":q<cr>", "Quit" },
  Q = { ":wq<cr>", "Save & Quit" },
  w = { ":w<cr>", "Save" },
  x = { ":bdelete<cr>", "Close Tab" },
  E = { ":e ~/.config/nvim/init.lua<cr>", "Edit nvim config" },
  t = { ":ToggleTerm<cr>", "Split Below" },
  e = { ":NvimTreeToggle<cr>", "Toggle explorer" },
  f = { ":Telescope find_files<cr>", "Telescope Find Files" },
  r = { ":Telescope live_grep<cr>", "Telescope Live Grep" }
}

local opts = { prefix = '<leader>' }
wk.register(mappings, opts)

