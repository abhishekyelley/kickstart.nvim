-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- local sound_dir = '~/kenney_interface-sounds/Audio/'
return {
  {
    'xiyaowong/transparent.nvim',
  },
  {
    'kdheepak/lazygit.nvim',
    lazy = true,
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },
  -- {
  --   'whleucka/reverb.nvim',
  --   event = 'BufReadPre',
  --   opts = {
  --     player = 'mpv', -- options: paplay (default), pw-play, mpv
  --     max_sounds = 20, -- Limit the amount of sounds that can play at the same time
  --     sounds = {
  --       -- Add custom sound paths or lists of sounds for other events here
  --       -- For example, BufRead can play a random sound from a list
  --       BufRead = { path = { sound_dir .. 'glass_001.ogg', sound_dir .. 'glass_002.ogg' }, volume = 0 - 100 },
  --       CursorMovedI = { path = sound_dir .. 'click_001.ogg', volume = 0 - 100 },
  --       InsertLeave = { path = sound_dir .. 'toggle_001.ogg', volume = 0 - 100 },
  --       ExitPre = { path = sound_dir .. 'close_001.ogg', volume = 0 - 100 },
  --       BufWrite = { path = sound_dir .. 'select_001.ogg', volume = 0 - 100 },
  --     },
  --   },
  -- },
}
