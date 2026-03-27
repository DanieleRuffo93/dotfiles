return {
  'ThePrimeagen/harpoon',
  keys = {
    { '<leader>ha', function() require('harpoon.mark').add_file() end, desc = '[A]dd file' },
    { '<leader>he', function() require('harpoon.ui').toggle_quick_menu() end, desc = '[E]dit list' },
    { '<leader>h1', function() require('harpoon.ui').nav_file(1) end, desc = 'File [1]' },
    { '<leader>h2', function() require('harpoon.ui').nav_file(2) end, desc = 'File [2]' },
    { '<leader>h3', function() require('harpoon.ui').nav_file(3) end, desc = 'File [3]' },
    { '<leader>h4', function() require('harpoon.ui').nav_file(4) end, desc = 'File [4]' },
  },
}

