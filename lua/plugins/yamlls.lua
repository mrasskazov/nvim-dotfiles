-- lua/plugins/yamlls.lua (or similar)
-- https://www.reddit.com/r/neovim/comments/153x4hd/how_to_load_a_yaml_schema_depending_on_the_file/
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      yamlls = {
        settings = {
          yaml = {
            --schemaStore = {
            --  enable = false, -- Disable built-in SchemaStore to use SchemaStore.nvim
            --},
            schemas = {
              -- Add your custom schema here
              -- The key is the schema URL or a local path, the value is a glob pattern for files
              --["https://example.com/my-custom-schema.json"] = "**/my-file.yaml",
              --["/path/to/my/local-schema.json"] = "**/another-file.yaml",
              ["~/code/sfera.inno.local/PRSM_DEPLOY/dreampipe_six/docs/config/md/dp.schema.md"] = "~/code/sfera.inno.local/PRSM_DEPLOY/dreampipe_six/config/**.yaml",
            },
          },
        },
      },
    },
  },
}
