-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local lspconfig = require("lspconfig")
lspconfig.basedpyright.setup({
  settings = {
    basedpyright = {
      typeCheckingMode = "standard",
    },
  },
})
