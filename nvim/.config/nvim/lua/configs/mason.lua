local present, mason = pcall(require, "mason")

if not present then
    return
end

local presen, mason_lspconfig = pcall(require, "mason-lspconfig")

if not presen then
    return
end

local servers = require('global_configs').language_servers

local options = {

    ui = {
        border = "rounded",
        icons = {
            package_pending = " ",
            package_installed = " ",
            package_uninstalled = " ﮊ",
        },
        keymaps = {
            toggle_server_expand = "<CR>",
            install_server = "i",
            update_server = "u",
            check_server_version = "c",
            update_all_servers = "U",
            check_outdated_servers = "C",
            uninstall_server = "X",
            cancel_installation = "<C-c>",
        },
    },

    max_concurrent_installers = 10,
}

mason.setup(options)
mason_lspconfig.setup({
    ensure_installed = servers
})
