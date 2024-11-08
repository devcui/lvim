-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.colorscheme        = "rose-pine"
lvim.transparent_window = true


-- Builtin Configuration
-- =========================================
lvim.builtin.test_runner = { active = true, runnter = 'ultest' }
lvim.builtin.web_programming = { active = true, extra = "typescript.nvim" } -- (typescript.nvim or typescript-tools.nvim) + package-info.nvim



-- Language Specific
-- =========================================
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, {
  "lua_ls",
  "clangd",
  "dockerls",
  "gopls",
  "golangci_lint_ls",
  "jdtls",
  "pyright",
  "rust_analyzer",
  "taplo",
  "texlab",
  "tsserver",
  "yamlls",
})


-- keybindings
-- =========================================
require("user.keybindings").config()

-- Plugins
-- =========================================
require("user.plugins").config()
