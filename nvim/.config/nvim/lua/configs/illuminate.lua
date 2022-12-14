local status_ok, illuminate = pcall(require, "illuminate")
if not status_ok then
    return
end

local options = {
    -- providers: provider used to get references in the buffer, ordered by priority
    providers = {
        "lsp",
        "treesitter",
        "regex",
    },
    -- delay: delay in milliseconds
    delay = 120,
    -- filetypes_denylist: filetypes to not illuminate, this overrides filetypes_allowlist
    filetypes_denylist = {
        "dirvish",
        "fugitive",
        "alpha",
        "NvimTree",
        "packer",
        "neogitstatus",
        "Trouble",
        "lir",
        "Outline",
        "spectre_panel",
        "toggleterm",
        "DressingSelect",
        "TelescopePrompt",
    },
    filetypes_allowlist = {},
    modes_denylist = {},
    modes_allowlist = {},
    providers_regex_syntax_denylist = {},
    providers_regex_syntax_allowlist = {},
    under_cursor = true,
}



local config_ok, _ = pcall(illuminate.configure, options)
if not config_ok then
    return
end
