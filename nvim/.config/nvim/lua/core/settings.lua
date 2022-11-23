-- leader
local o = vim.opt

o.backup = false
o.swapfile = false
o.writebackup = false
o.clipboard = "unnamedplus"
o.cmdheight = 1
o.laststatus = 0
o.ruler = false
--[[ o.number = true ]]
o.completeopt = { "menuone", "noselect" }
o.mouse = "a"
o.colorcolumn = "99999"
o.fileencoding = "utf-8"
o.foldmethod = "manual"
o.foldexpr = ""
o.hidden = true
o.hlsearch = true
o.ignorecase = true
o.pumheight = 10
o.showmode = false
o.showtabline = 2
o.smartcase = true
o.smartindent = true

o.termguicolors = true
o.timeoutlen = 250
o.updatetime = 250

o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4

o.cursorline = true
o.signcolumn = "yes"
o.wrap = false
o.spell = false
o.spelllang = "en"
o.scrolloff = 8
o.sidescrolloff = 8

o.shortmess:append "c"
o.shortmess:append "I"
