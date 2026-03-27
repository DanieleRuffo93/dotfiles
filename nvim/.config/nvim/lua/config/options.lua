-- Leader keys
-- NOTE: this must be set before plugins load. Do not move
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- UI
vim.g.have_nerd_font = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false
vim.o.signcolumn = 'yes'
vim.o.cursorline = true
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Editing
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.confirm = true
vim.o.inccommand = 'split'

-- Performance
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Splits
vim.o.splitright = true
vim.o.splitbelow = true

-- Scrolling
vim.o.scrolloff = 10

-- Clipboard
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

-- Diagnostics
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = vim.diagnostic.severity.ERROR },
  virtual_text = true,
  virtual_lines = false,
  jump = { float = true },
}
