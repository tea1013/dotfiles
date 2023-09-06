vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    vim.api.nvim_set_keymap('n', 'gd', [[<cmd>lua vim.lsp.buf.definition()<cr>]], { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'gf', [[<cmd>lua vim.lsp.buf.format()<cr>]], { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'gh', [[<cmd>lua vim.lsp.buf.hover()<cr>]], { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'g/', [[<cmd>lua vim.lsp.buf.references()<cr>]], { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'gr', [[<cmd>lua vim.lsp.buf.rename()<cr>]], { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'ga', [[<cmd>lua vim.lsp.buf.code_action()<cr>]], { noremap = true, silent = true })

    local opts = { buffer = ev.buf }
  end,
})

