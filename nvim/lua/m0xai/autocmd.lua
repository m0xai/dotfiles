function SetFormatters()
    local bufnr = vim.api.nvim_get_current_buf()
    local ft = vim.api.nvim_buf_get_option(bufnr, "filetype")

    if ft == 'java' then
        print("Omg this is a java file.")
        vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

    -- elseif ft == "typescript" or ft == "typescriptreact" or ft == "javascript" or ft == "javascriptreact" then
    --    print("This is frontend file, init!")
    --    vim.cmd [[autocmd BufWritePre * Format ]]
     end
end

vim.cmd "autocmd FileType * lua SetFormatters()"

-- Call formatter.nvim's FormatWrite function on save
-- Currently only frontend file types with formatter.nvim configured
vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]], true)
