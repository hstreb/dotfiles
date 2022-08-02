local status_ok, wk = pcall(require, "which-key")
if not status_ok then
	return
end

wk.setup{}

local mappings = {
  q = { ":q<cr>", "Quit" },
  Q = { ":wq<cr>", "Save & Quit" },
  w = { ":w<cr>", "Save" },
  x = { ":bdelete<cr>", "Close Tab" },
  E = { ":e ~/.config/nvim/init.lua<cr>", "Edit nvim config" },
  t = { ":ToggleTerm<cr>", "Split Below" },
  e = { ":NvimTreeToggle<cr>", "Toggle explorer" }
}

local opts = { prefix = '<leader>' }
wk.register(mappings, opts)

