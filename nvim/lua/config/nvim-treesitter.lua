local status, treesitter = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

treesitter.setup {
  ensure_installed = {"lua", "python"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    disable = {},
  },
　indent = {
　　enable = true,
  　disable ={"html"},-- htmlのインデントだけ無効化
　},
  autotag = {
    enable = true,
  },
}

