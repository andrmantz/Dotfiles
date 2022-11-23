local present, null_ls = pcall(require, "null-ls")
if not present then
    return
end

local formatting = null_ls.builtins.formatting
-- local diagnostics = null_ls.builtins.diagnostics

local options = {
    debug = false,
    sources = {
        formatting.prettier.with({ extra_args = { "--no-semi" } }),
        formatting.yapf,
        formatting.gofmt,
        formatting.clang_format.with({ extra_args = {"-style=\"{IndentWidth: 4}\""}}),
        -- diagnostics.flake8
    },
}


null_ls.setup(options)
