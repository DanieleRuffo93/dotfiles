return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    on_attach = function(bufnr)
      local gitsigns = require 'gitsigns'

      local map = function(keys, func, desc) vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc }) end

      -- Navigation
      map(']h', gitsigns.next_hunk, 'Next [H]unk')
      map('[h', gitsigns.prev_hunk, 'Prev [H]unk')

      -- Actions
      map('<leader>gs', gitsigns.stage_hunk, '[S]tage hunk')
      map('<leader>gr', gitsigns.reset_hunk, '[R]eset hunk')
      map('<leader>gS', gitsigns.stage_buffer, '[S]tage buffer')
      map('<leader>gR', gitsigns.reset_buffer, '[R]eset buffer')
      map('<leader>gb', gitsigns.blame_line, '[B]lame line')
      map('<leader>gp', gitsigns.preview_hunk, '[P]review hunk')
      map('<leader>gd', gitsigns.diffthis, '[D]iff this')
    end,
  },
}
