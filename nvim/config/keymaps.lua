-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local mapkey = require("util.keymapper").mapkey

-- Buffer Navigation
mapkey("<leader>bn", "bnext", "n") -- Next buffer
mapkey("<leader>bp", "bprevious", "n") -- Prev buffer
mapkey("<leader>bb", "e #", "n") -- Switch to Other Buffer
mapkey("<leader>`", "e #", "n") -- Switch to Other Buffer
mapkey("<leader>bd", "bdelete #", "n") -- Delete Buffer

-- Directory Navigation
mapkey("<leader>t", "NvimTreeFocus", "n")
mapkey("<leader>e", "NvimTreeToggle", "n")

-- Indenting
mapkey("<", "v", "<gv") -- Shift Indentation to Left
mapkey(">", "v", ">gv") -- Shift Indentation to Right

local api = vim.api

-- Comments
api.nvim_set_keymap("n", "<C-_>", "gtc", { noremap = false })
api.nvim_set_keymap("v", "<C-_>", "goc", { noremap = false })
