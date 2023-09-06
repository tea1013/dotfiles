vim.opt.number = true

vim.scriptencoding = 'utf-8'

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.signcolumn = "number"
vim.bo.softtabstop = 2
vim.o.updatetime = 300

-- auto add final new line --
-- vim.cmd [[
-- augroup add_final_newline
--   autocmd!
--   autocmd BufWritePre * if getline('$') != '' | call append(line('$'), '') | endif
-- augroup END
-- ]]

