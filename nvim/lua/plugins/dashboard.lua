local header = {
  "                                                       ",
  "                                                       ",
  "                                                       ",
  " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
  " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
  " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
  " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
  " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
  " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
  "                                                       ",
  "                                                       ",
}

local center = {
  {
    desc = "New File ",
    key = "n",
    icon = " ",
    action = "enew",
    group = "Include",
  },
  {
    desc = " Restore Session",
    key = "s",
    icon = " ",
    action = 'lua require("persistence").load()',
    group = "Label",
  },
  {
    desc = "Lazy ",
    key = "l",
    icon = "󰒲 ",
    action = "Lazy",
    group = "Define",
  },
  {
    desc = "Config ",
    key = "c",
    icon = " ",
    action = "lua LazyVim.pick.config_files()()",
    group = "Constant",
  },
  {
    desc = "Exit ",
    key = "q",
    icon = " ",
    action = "exit",
    group = "Special",
  },
}

local version = vim.version()

local footer = {
  "",
  "nvim version " .. version.major .. "." .. version.minor,
}

vim.api.nvim_create_autocmd("Filetype", {
  pattern = "dashboard",
  group = vim.api.nvim_create_augroup("Dashboard_au", { clear = true }),
  callback = function()
    vim.cmd([[
            setlocal buftype=nofile
            setlocal nonumber norelativenumber nocursorline noruler fillchars=eob:\ 
            nnoremap <buffer> <F2> :h news.txt<CR> 
        ]])
  end,
})

return {
  "nvimdev/dashboard-nvim",
  opts = {
    theme = "hyper",
    config = {
      header = header,
      shortcut = center,
      footer = footer,
      packages = { enable = true },
    },
  },
}

-- return {
--   "nvimdev/dashboard-nvim",
--   event = "VimEnter",
--   config = function()
--     require("dashboard").setup({
--       -- config
--       header = header,
--       footer = footer,
--       shortcut = center,
--     })
--   end,
--   dependencies = { { "nvim-tree/nvim-web-devicons" } },
-- }
