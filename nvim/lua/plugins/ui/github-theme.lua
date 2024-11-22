return {
  "projekt0n/github-nvim-theme",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("github-theme").setup({
      specs = {
        github_dark_dimmed = {
          syntax = {
            builtin1 = "orange",
            constants = "orange",
            type = "orange",
            keywords = "orange",
          }
        }
      },
      groups = {
        github_dark_dimmed = {
          type = { fg = "orange" }
        }
      },
      options = {
        styles = {
          comments = "italic",
        },
      },
    })
    

    vim.cmd("colorscheme github_dark_dimmed")
  end,
}
