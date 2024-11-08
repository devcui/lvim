local M = {}

M.config = function()
  lvim.plugins = {
    { "rose-pine/neovim",     name = "rose-pine" },
    { "nvim-lua/plenary.nvim" },
    { "hrsh7th/cmp-cmdline" },
    {
      "Exafunction/codeium.nvim",
      dependencies = { "nvim-lua/plenary.nvim", "hrsh7th/nvim-cmp" }
    },
    {
      "iamcco/markdown-preview.nvim",
      build = "cd app && npm install",
      ft = "markdown"
    },
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
    {
      "ray-x/lsp_signature.nvim",
      config = function()
        require("user.lsp_signature").config()
      end,
      event = { "BufRead", "BufNew" },
    },
    {
      "vladdoster/remember.nvim",
      config = function()
        require("remember").setup {}
      end
    },
    {
      "folke/todo-comments.nvim",
      dependencies = "nvim-lua/plenary.nvim",
      config = function()
        require("user.todo_comments").config()
      end,
      event = "BufRead",
    },
    {
      "folke/trouble.nvim",
      config = function()
        require("user.troubl").config()
      end,
      event = "VeryLazy",
      cmd = "Trouble"
    },
    {
      "tzachar/cmp-tabnine",
      build = "./install.sh",
      dependencies = "hrsh7th/nvim-cmp",
      config = function()
        local tabnine = require "cmp_tabnine.config"
        tabnine:setup {
          max_lines = 1000,
          max_num_results = 10,
          sort = true,
        }
      end,
      lazy = true,
      event = "InsertEnter"
    },
    {
      "kevinhwang91/nvim-bqf",
      event = "WinEnter",
      config = function()
        require("user.bqf").config()
      end,
    },
    {
      "mrcjkb/rustaceanvim",
      init = function()
        require("user.rust_tools").config()
      end,
      ft = { "rust", "rs" }
    },
    {
      "abzcoding/lsp_lines.nvim",
      lazy = true,
      config = function()
        require("lsp_lines").setup()
      end,
    },
    {
      "nvim-pack/nvim-spectre",
      lazy = true,
      config = function()
        require("user.spectre").config()
      end,
    },
    {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require("user.colorizer").config()
      end,
      event = "BufReadPre",
    },
    {
      "olimorris/persisted.nvim",
      event = "BufReadPre",
      lazy = true,
      config = function()
        require("user.persist").config()
      end,
    },
    { "mfussenegger/nvim-jdtls", ft = "java" },
    {
      "kristijanhusak/orgmode.nvim",
      keys = { "go", "gC" },
      ft = { "org" },
      config = function()
        require("user.orgmode").setup()
      end,
    },
    {
      "danymat/neogen",
      lazy = true,
      config = function()
        require("neogen").setup {
          enabled = true,
        }
      end,
      dependencies = "nvim-treesitter/nvim-treesitter",
    },
    {
      "vim-test/vim-test",
      cmd = { "TestNearest", "TestFile", "TestSuite", "TestLast", "TestVisit" },
      config = function()
        require("user.vim_test").config()
      end,
      enabled = (lvim.builtin.test_runner.active and lvim.builtin.test_runner.runner == "ultest"),
    },
    {
      -- NOTE: This plugin is not maintained anymore, you might wanna use https://github.com/pmizio/typescript-tools.nvim
      "jose-elias-alvarez/typescript.nvim",
      ft = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
      },
      lazy = true,
      config = function()
        require("user.tss").config()
      end,
      enabled = (lvim.builtin.web_programming.active and lvim.builtin.web_programming.extra == "typescript.nvim"),
    },
  }
end

return M
