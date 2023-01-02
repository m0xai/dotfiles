local prettierd = function()
    return {
        exe = "prettierd",
        args = {vim.api.nvim_buf_get_name(0)},
        stdin = true
    }
end

require('formatter').setup({
    logging = false,
    filetype = {
        typescriptreact = {prettierd},
        typescript = {prettierd},
        javascriptreact = {prettierd},
        javascript = {prettierd},
        -- other formatters ...
    }
})
