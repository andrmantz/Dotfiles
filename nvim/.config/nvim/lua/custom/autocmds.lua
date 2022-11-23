local autocmd = vim.api.nvim_create_autocmd

-- Don't autocommend
autocmd("FileType", {
    pattern = "*",
    command = "set formatoptions-=cro"
})

-- Format and save unnamed files on save
autocmd("BufWritePre", {
    pattern = "*",
    command = "lua vim.lsp.buf.format()"
})
