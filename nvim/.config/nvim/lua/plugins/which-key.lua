return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  opts = {
    delay = 0,
    icons = { mappings = vim.g.have_nerd_font },
    spec = {
      { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
      { '<leader>p', group = '[P]roject', mode = { 'n', 'v' } },
      { '<leader>t', group = '[T]oggle' },
      { '<leader>h', group = '[H]arpoon', mode = { 'n', 'v' } },
      { '<leader>g', group = 'Lazy [G]it', mode = { 'n', 'v' } },
    },
  },
}