local status, telescope = pcall(require, "telescope")
if (not status) then return end

local builtin = require('telescope.builtin')

telescope.setup({
  defaults = {
    sorting_strategy = "ascending",
    winblend = 0,
    file_ignore_patterns = {
      ".git/*",
      "node_modules/*",
      ".venv/*",
      "__pycache__/*"
    },
    vimgrep_arguments = {'grep', '--color=never', '--line-number', '--with-filename'},
    layout_strategy = 'flex',
    layout_config = {
      flex = {
        horizontal = {
          width = 0.3,
        },
      },
    }
  }
})

-- file search
vim.keymap.set('n', '<C-f>',
  function()
    builtin.find_files({
      hidden = true
    })
  end)
