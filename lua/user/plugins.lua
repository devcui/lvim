local M = {}

M.config = function()
  lvim.plugins = {
    { "rose-pine/neovim",             name = "rose-pine" },
    { "nvim-lua/plenary.nvim" },
    { "hrsh7th/cmp-cmdline" },
    { "Exafunction/codeium.nvim",     dependencies = { "nvim-lua/plenary.nvim", "hrsh7th/nvim-cmp" } },
    { "iamcco/markdown-preview.nvim", build = "cd app && npm install",                               ft = "markdown" },
    { "wakatime/vim-wakatime" },
    {
      "sindrets/diffview.nvim",
      lazy = true,
      cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
      keys = { "<leader>gd", "<leader>gh" },
      config = function()
        require("user.diffview").config()
      end
    },
    {
      "simrat39/symbols-outline.nvim",
      config = function()
        require("user.symbols_outline").config()
      end,
      event = "BufReadPost"
    },
  }
end

return M
