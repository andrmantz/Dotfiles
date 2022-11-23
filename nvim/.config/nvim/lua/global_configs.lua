-- Basically a file to keep some global settigns I change often.

local M = {}

M.parsers = {
    "bash",
    "c",
    "cpp",
    "go",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "java",
    "yaml",
    "dockerfile",
    "gomod",
    "markdown",
    "solidity"
}

M.language_servers = {
    "dockerls",
    "gopls",
    "clangd",
    "pyright",
    "yamlls",
    "bashls",
    "ansiblels",
    "sumneko_lua",
    "solidity",
    "hls"
}


M.active_plugins = {
    "treesitter",
    "autopairs",
    "better-escape",
    "bufferline",
    "cmp",
    "comments",
    "gitsigns",
    "indent_blankline",
    "nvimtree",
    "project",
    "telescope",
    "whichkey",
    "toggleterm",
    "mason",
    "illuminate"
}

M.colorscheme = "tomorrow"
return M
