return {
  'ThePrimeagen/harpoon',
  keys = {
    { '<leader>ha', function() require('harpoon.mark').add_file() end, desc = '[A]dd file' },
    { '<leader>he', function() require('harpoon.ui').toggle_quick_menu() end, desc = '[e]dit list' },
    { '<leader>hs', function() require('harpoon.ui').nav_file(1) end, desc = '[1] file' },
    { '<leader>hd', function() require('harpoon.ui').nav_file(2) end, desc = '[2] file' },
    { '<leader>hf', function() require('harpoon.ui').nav_file(3) end, desc = '[3] file' },
    { '<leader>hg', function() require('harpoon.ui').nav_file(4) end, desc = '[4] file' },
  },
}