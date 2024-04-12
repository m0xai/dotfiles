-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.keys.insert_mode["jj"] = "<ESC>"
lvim.keys.insert_mode["jk"] = "<ESC>"
lvim.keys.normal_mode["gt"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["gT"] = ":BufferLineCyclePrev<CR>"

lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>2ToggleTerm size=30 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>2ToggleTerm size=30 direction=horizontal<cr>", "Split horizontal" },
}

vim.opt.wrap = true

lvim.transparent_window = true
lvim.format_on_save.enabled = true

lvim.plugins = {
  {
    "lervag/vimtex",
    config = function()
      vim.g.vimtex_view_method = 'skim'
      vim.cmd("call vimtex#init()")
    end,
  },
  {
    'mhartington/oceanic-next'
  },
  {
    "lepture/vim-jinja"
  }
}

lvim.colorscheme = "OceanicNext"

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "black" },
}


local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    name = "shellcheck",
    args = { "--severity", "warning" },
  },
}
