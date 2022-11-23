local options = { noremap = true, silent = true }
-- better tabbing
vim.api.nvim_set_keymap('v', '>', '>gv', options)
vim.api.nvim_set_keymap('v', '<', '<gv', options)


-- Buffer switch with tab
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', options)
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', options)
vim.api.nvim_set_keymap('n', '<C-c>', ':lua require("custom.functions").close_buf()<CR>', options)

-- ctrl+s save
vim.api.nvim_set_keymap('n', '<C-s>', 'mzgg=G\'z | :lua require("custom.functions").save()<CR>', options)
vim.api.nvim_set_keymap('i', '<C-s>', '<ESC>mzgg=G\'z | :lua require("custom.functions").save()<CR>i', options)

vim.api.nvim_set_keymap('n', '<leader>m', ":NvimTreeToggle<CR>", options)

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', options)
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', options)

-- Move current line in normal and insert mode
vim.api.nvim_set_keymap('n', '<A-Down>', 'v$:move \'>+1<CR>gv-gv<ESC>', options)
vim.api.nvim_set_keymap('n', '<A-Up>', 'v$:move \'>-2<CR>gv-gv<ESC>', options)
vim.api.nvim_set_keymap('i', '<A-Up>', '<ESC>v$:move \'>-2<CR>gv-gv<ESC>i', options)
vim.api.nvim_set_keymap('i', '<A-Down>', '<ESC>v$:move \'>+1<CR>gv-gv<ESC>i', options)
vim.api.nvim_set_keymap("v", "<A-Down>", ":m .+1<CR>==", options)
vim.api.nvim_set_keymap("v", "<A-Up>", ":m .-2<CR>==", options)
vim.api.nvim_set_keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", options)
vim.api.nvim_set_keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", options)

-- Window navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", options)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", options)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", options)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", options)

vim.api.nvim_set_keymap("n", "<C-Down>", ":resize +2<CR>", options)
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize -2<CR>", options)
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize -2<CR>", options)
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize +2<CR>", options)

vim.api.nvim_set_keymap("n", "<C-n>", ":enew<CR>", options)

vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", options)
vim.api.nvim_set_keymap("n", "<C-s-f>", "<cmd>Telescope live_grep<cr>", options)
vim.api.nvim_set_keymap("n", "<C-f>", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>", options)

-- Comments
vim.api.nvim_set_keymap("v", "<leader>/", "<ESC><CMD>lua require('Comment.api').toggle.blockwise(vim.fn.visualmode())<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", options)

