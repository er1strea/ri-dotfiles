-- Example configuration within your init.lua or a dedicated Rust configuration file
require("rustaceanvim").setup({
  server = {
    -- You can add custom settings for rust-analyzer here
    -- For example, to enable cargo check on save:
    settings = {
      ["rust-analyzer"] = {
        check = {
          command = "clippy", -- Use clippy for more thorough checks
          extraArgs = { "--all-features" }, -- Check all features in your project
        },
      },
    },
  },
})
