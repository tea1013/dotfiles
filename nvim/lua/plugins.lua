vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use {
    'rmehri01/onenord.nvim',
    config = function()
      require("config/onenord")
    end
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {'nvim-tree/nvim-web-devicons'},
    config = function()
      require("config/nvim-tree")
    end
  }

  use {
    'neovim/nvim-lspconfig',
    config = function()
      require("config/nvim-lspconfig")
    end
  }

  use {
    "williamboman/mason.nvim",
    config = function()
      require("config/mason")
    end,
    requires = {
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp'
    }
  }

  use {
    "williamboman/mason-lspconfig.nvim",
    config = function()
    end
  }

  use {
    'onsails/lspkind.nvim',
    config = function ()
    end
  }

  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require("config/nvim-cmp")
    end,
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      {
        "L3MON4D3/LuaSnip",
        tag = "v2.*",
        requires = 'saadparwaiz1/cmp_luasnip',
        config = function ()
          require("config/luasnip")
        end
      }
    }
  }

  use {
    'hrsh7th/cmp-buffer',
    config = function()
    end
  }

  use {
    'hrsh7th/cmp-path',
    config = function()
      require("config/cmp-path")
    end
  }

  use {
    'hrsh7th/cmp-cmdline',
    config = function()
    end
  }

  use {
    'hrsh7th/cmp-nvim-lsp',
    config = function()
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    config = function ()
      require("config/nvim-treesitter")
    end
  }

  use {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function()
      require("config/nvim-autopairs")
    end
  }

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require("config/gitsigns")
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require("config/lualine")
    end,
    requires = {
      'neovim/nvim-lspconfig',
      'lewis6991/gitsigns.nvim',
      'SmiteshP/nvim-navic',
    }
  }

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    requires = {'nvim-lua/plenary.nvim'},
    config = function()
      require("config/telescope")
    end
  }

  use {
    'mfussenegger/nvim-lint',
    config = function()
      require("config/nvim-lint")
    end
  }

  use {
    'SmiteshP/nvim-navic',
    config = function()
      require('config/nvim-navic')
    end,
    requires = 'neovim/nvim-lspconfig'
  }

  use {
      "iamcco/markdown-preview.nvim",
      run = function()
        vim.fn["mkdp#util#install"]()
      end
  }

  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("config/null-ls")
    end
  }
end)
