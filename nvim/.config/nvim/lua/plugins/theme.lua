return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha',
      transparent_background = true,
      no_italic = true,
      integrations = {
        blink_cmp = true,
        gitsigns = true,
        harpoon = true,
        mason = true,
        mini = { enabled = true },
        telescope = { enabled = true },
        treesitter = true,
        which_key = true,
      },
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
