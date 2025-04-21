-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  { "echasnovski/mini.pairs", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
  --{ "MunifTanjim/nui.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
}
