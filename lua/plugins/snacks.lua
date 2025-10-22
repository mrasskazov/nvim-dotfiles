return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    notifier = { enabled = false },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    scroll = { enabled = false }, -- Disable animations for snacks.nvim
    -- from https://github.com/kezhenxu94/dotfiles/blob/092d9d796a56944fbb958a01a5f5fa4d88fa6ad0/config/nvim/lua/plugins/ui.lua#L26
    --dashboard = { enabled = false },
    --scratch = { enabled = false },
    --terminal = { enabled = false },
    --scroll = { enabled = false },
    --indent = { enabled = false },
  },
}
