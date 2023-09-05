return {
  {
    'sainnhe/everforest',
    config = function()
      vim.cmd[[colorscheme everforest]]
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      require("config/nvim-tree")
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("config/nvim-lspconfig")
    end
  },
  {
    "williamboman/mason.nvim",
    config = function()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
    end
  },
  {
    "onsails/lspkind.nvim",
    config = function ()
    end
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("config/nvim-cmp")
    end
  },
  {
    "hrsh7th/cmp-buffer",
    config = function()
    end
  },
  {
    "hrsh7th/cmp-path",
    config = function()
      require("config/cmp-path")
    end
  },
  {
    "hrsh7th/cmp-cmdline",
    config = function()
    end
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    config = function()
    end
  },
  {
    "hrsh7th/vim-vsnip",
    config = function()
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    config = function ()
      require("config/null-ls")
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    config = function ()
      require("config/nvim-treesitter")
    end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {}
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require("config/gitsigns")
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require("config/lualine")
    end
  }
}

