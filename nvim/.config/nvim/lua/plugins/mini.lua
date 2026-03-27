-- TODO: investigate mini.ai vaf/vif not working as expected. At least if I understood what I should be able to do
return {
  'nvim-mini/mini.nvim',
  config = function()
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup {
      mappings = {
        add = 'gsa',
        delete = 'gsd',
        find = 'gsf',
        find_left = 'gsF',
        highlight = 'gsh',
        replace = 'gsr',
        update_n_lines = 'gsn',
      },
    }

    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = vim.g.have_nerd_font }
    statusline.section_location = function() return '%2l:%-2v' end

    local starter = require 'mini.starter'
    starter.setup {
      header = 'Welcome back, Daniele',
      items = {
        starter.sections.recent_files(5, true),
        {
          { name = 'Find file', action = 'Telescope find_files', section = 'Actions' },
          { name = 'Live grep', action = 'Telescope live_grep', section = 'Actions' },
          { name = 'New file', action = 'enew', section = 'Actions' },
          { name = 'Quit', action = 'qa', section = 'Actions' },
        },
      },
      footer = '',
    }
  end,
}
