local colors = require('onenord.colors').load()

local function diff_source()
  local gitsigns = vim.b.gitsigns_status_dict
  if gitsigns then
    return {
      added = gitsigns.added,
      modified = gitsigns.changed,
      removed = gitsigns.removed
    }
  end
end

require('lualine').setup {
  options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      'mode',
    },
    lualine_b = {
      {
        'filename',
        newfile_status = true,
        path = 1,
        shorting_target = 24,
        symbols = { modified = '_󰷥', readonly = ' ', newfile = '󰄛' },
      },
    },
    lualine_c = {
      { 'navic' }
    },
    lualine_x = {
      'encoding'
    },
    lualine_y = {
      { 'filetype', color = { fg = colors.fg } },
    },

    lualine_z = {
    },
  },
  tabline = {
    lualine_a = {
      {
        'buffers',
        symbols = { modified = '_󰷥', alternate_file = ' ', directory = ' ' },
      },
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {
      {
        'diff',
        symbols = { added = ' ', modified = ' ', removed = ' ' },
        source = diff_source
      }
    },
    lualine_y = {
      'branch'
    },
    lualine_z = {
      { 'tabs' },
    },
  }
}

vim.api.nvim_set_option("showmode", false)
