return {
  "nvim-telescope/telescope.nvim",
  keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
  },
  -- change some options
  opts = {
    --  layout_strategy = "flex",
    --defaults = {
    --  layout_config = {
    --    prompt_position = "bottom",
    --  },
    --  sorting_strategy = "ascending",
    --  winblend = 0,
    --},
    layout_strategy = "flex",
    layout_config = {
      prompt_position = "bottom",
    },
    sorting_strategy = "ascending",
    winblend = 0,
  },

  config = function()
    local telescope = require("telescope")
    telescope.setup({
      pickers = {
        live_grep = {
          file_ignore_patterns = { "node_modules", ".git", ".venv" },
          additional_args = function(_)
            return { "--hidden" }
          end,
        },
        find_files = {
          file_ignore_patterns = { "node_modules", ".git", ".venv" },
          hidden = true,
        },
      },
      extensions = {
        "fzf",
      },
    })
    telescope.load_extension("fzf")
  end,
}
