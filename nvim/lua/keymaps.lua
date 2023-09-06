local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- tab
keymap("n", "<C-h>", ":bprev<CR>", opts)
keymap("n", "<C-L>", ":bnext<CR>", opts)
keymap("n", "<C-x>", ":bd<CR>", opts)

-- Split window
keymap("n", "ss", ":split<Return><C-w>w", opts)
keymap("n", "sv", ":vsplit<Return><C-w>w", opts)

-- Select all
keymap("n", "<C-a>", "gg<S-v>G", opts)

-- Do not yank with x
keymap("n", "x", '"_x', opts)

-- 行の端に行く
keymap("n", "<Space>h", "^", opts)
keymap("n", "<Space>l", "$", opts)

-- ;でコマンド入力( ;と:を入れ替)
keymap("n", ";", ":", opts)

-- 行末までのヤンクにする
keymap("n", "Y", "y$", opts)

-- <Space>w でsave
keymap("n", "<Space>w", ":w<Return>", opts)

-- <Space>wq でsaveしてquit
keymap("n", "<Space>wq", ":wq<Return>", opts)

-- ESC*3 でハイライトやめる
keymap("n", "<Esc><Esc>", ":<C-u>set nohlsearch<Return>", opts)

-- Backspaceで一番上へ
keymap("n", "<Backspace>", "gg", opts)

-- Returnで一番下へ
keymap("n", "<Return>", "GG", opts)

-- Insert --
-- Press jk fast to exit insert mode
keymap("i", "jj", "<ESC>", opts)

---------------
--  plugins  --
---------------

-- nvim-tree --
keymap("n", "<C-i>", ":NvimTreeFocus<Return>", opts)

-- packer
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "plugins.lua" },
  command = "PackerCompile",
})
