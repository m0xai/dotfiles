return {
  {
    "AstroNvim/astrocore",
    ---Wtype AstroCoreOpts
    opts = {
      mappings = {
        n = {},
        i = {
          ["<Tab>"] = { "<C-n>", desc = "Next completion" },
        },
      },
    },
  },
}
