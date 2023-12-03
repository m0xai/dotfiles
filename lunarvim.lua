lvim.keys.insert_mode["jj"] = "<ESC>"
lvim.keys.insert_mode["jk"] = "<ESC>"

lvim.transparent_window = true

lvim.plugins = {
  {
    "lervag/vimtex",
    config = function()
      vim.g.vimtex_view_method = 'skim'
      vim.cmd("call vimtex#init()")
    end,
  },
  {"catppuccin/nvim",
      init = function()
    end
  }
}
