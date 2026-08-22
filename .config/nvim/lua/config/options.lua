-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Keep Normal/Visual-mode commands usable with a Russian keyboard layout.

local function escape_langmap(s)
  return vim.fn.escape(s, [[;,"|\]])
end

local en = [[`qwertyuiop[]asdfghjkl;'zxcvbnm,.]]
local ru = [[ёйцукенгшщзхъфывапролджэячсмитьбю]]

local en_shift = [[~QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>]]
local ru_shift = [[ЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ]]

vim.opt.langmap = table.concat({
  escape_langmap(ru) .. ";" .. escape_langmap(en),
  escape_langmap(ru_shift) .. ";" .. escape_langmap(en_shift),
}, ",")

vim.opt.langremap = false
