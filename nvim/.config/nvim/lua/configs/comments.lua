local status_ok, comment = pcall(require, "Comment")
if not status_ok then
    return
end

comment.setup {
    on_config_done = nil,
    padding = true,

    ignore = "^$",

    mappings = {
        basic = true,
        extra = true,
        extended = false,
    },

    toggler = {
        ---line-comment toggle
        line = "gcc",
        ---block-comment toggle
        block = "gbc",
    },
    opleader = {
        line = "gc",
        block = "gb",
    },
    pre_hook = function(ctx)
        local U = require "Comment.utils"

        local location = nil
        if ctx.ctype == U.ctype.blockwise then
            location = require("ts_context_commentstring.utils").get_cursor_location()
        elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
            location = require("ts_context_commentstring.utils").get_visual_start_location()
        end

        return require("ts_context_commentstring.internal").calculate_commentstring {
            key = ctx.ctype == U.ctype.line and "__default" or "__multiline",
            location = location,
        }
    end,
}
