-- Neovim
-- =========================================
lvim.leader = " "
lvim.colorscheme = "rose-pine" -- set to a custom theme
lvim.builtin.time_based_themes = false -- set false to use your own configured theme
lvim.transparent_window = false -- enable/disable transparency
lvim.debug = false
vim.lsp.set_log_level "error"
lvim.log.level = "warn"
require("user.neovim").config()
lvim.lsp.code_lens_refresh = true
lvim.lsp.installer.setup.automatic_installation = false

vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- Customization
-- =========================================
lvim.builtin.sell_your_soul_to_devil = { active = true, prada = false, openai = false } -- if you want microsoft to abuse your soul
lvim.builtin.lastplace = { active = false } -- change to false if you are jumping to future
lvim.builtin.tabnine = { active = true } -- change to false if you don't like tabnine
lvim.builtin.persistence = { active = true } -- change to false if you don't want persistence
lvim.builtin.presence = { active = true } -- change to true if you want discord presence
lvim.builtin.orgmode = { active = true } -- change to true if you want orgmode.nvim
lvim.builtin.dap.active = true -- change this to enable/disable debugging
lvim.builtin.fancy_statusline = { active = true } -- enable/disable fancy statusline
lvim.builtin.fancy_wild_menu = { active = true } -- enable/disable cmp-cmdline
lvim.builtin.fancy_diff = { active = true } -- enable/disable fancier git diff
lvim.builtin.test_runner = { active = true, runner = "ultest" } -- change this to enable/disable ultest or neotest
lvim.builtin.cheat = { active = true } -- enable/disable cheat.sh integration
lvim.builtin.sql_integration = { active = true } -- use sql integration
lvim.builtin.smooth_scroll = "cinnamon" -- for smoth scrolling, can be "cinnamon", "neoscroll" or ""
lvim.builtin.neoclip = { active = true, enable_persistent_history = true }
lvim.builtin.nonumber_unfocus = true -- diffrentiate between focused and non focused windows
lvim.builtin.custom_web_devicons = false -- install https://github.com/Nguyen-Hoang-Nam/mini-file-icons
lvim.builtin.harpoon = { active = true } -- use the harpoon plugin
lvim.builtin.remote_dev = { active = true } -- enable/disable remote development
lvim.builtin.cursorline = { active = true } -- use a bit fancier cursorline
lvim.builtin.motion_provider = "flash" -- change this to use different motion providers ( hop or leap or flash)
lvim.builtin.hlslens = { active = true } -- enable/disable hlslens
lvim.builtin.csv_support = true -- enable/disable csv support
lvim.builtin.sidebar = { active = true } -- enable/disable sidebar
lvim.builtin.task_runner = "async_tasks" -- change this to use different task runners ( "async_tasks" or "overseer" or "")
lvim.builtin.winbar_provider = "" -- can be "filename" or "treesitter" or "navic" or ""
lvim.builtin.metals = {
  active = true, -- enable/disable nvim-metals for scala development
  fallbackScalaVersion = "3.2.0-RC3",
  serverVersion = "1.0.1",
  bloopVersion = "1.5.11",
}
lvim.builtin.collaborative_editing = { active = true } -- enable/disable collaborative editing
lvim.builtin.file_browser = { active = true } -- enable/disable telescope file browser
lvim.builtin.sniprun = { active = true } -- enable/disable sniprun
lvim.builtin.tag_provider = "outline" -- change this to use different tag providers ( symbols-outline or vista or outline)
lvim.builtin.global_statusline = true -- set true to use global statusline
lvim.builtin.dressing = { active = false } -- enable to override vim.ui.input and vim.ui.select with telescope
lvim.builtin.refactoring = { active = true } -- enable to use refactoring.nvim code_actions
lvim.builtin.tmux_lualine = true -- use vim-tpipeline to integrate lualine and tmux
lvim.builtin.lsp_lines = true -- enable/disable lsp_lines to display lsp virtual text below instead of behind
lvim.builtin.legendary = { active = true } -- enable/disable legendary plugin ( ctrl-p command )
lvim.builtin.tree_provider = "neo-tree" -- can be "neo-tree" or "nvimtree" or ""
lvim.builtin.lir.active = true
lvim.builtin.breadcrumbs.active = true
lvim.builtin.illuminate.active = true
lvim.builtin.noice = { active = true } -- enables noice.nvim and inc-rename.nvim
lvim.builtin.go_programming = { active = true } -- gopher.nvim + nvim-dap-go
lvim.builtin.python_programming = { active = true } -- swenv.nvim + nvim-dap-python + requirements.txt.vim
lvim.builtin.web_programming = { active = true, extra = "typescript.nvim" } -- (typescript.nvim or typescript-tools.nvim) + package-info.nvim
lvim.builtin.rust_programming = { active = true } -- rustaceanvim + crates.nvim
lvim.builtin.cpp_programming = { active = true } -- clangd_extensions.nvim + make-tools.nvim
lvim.builtin.cmp.cmdline.enable = true
lvim.builtin.borderless_cmp = true
lvim.builtin.colored_args = true -- if true then sets up hlargs.nvim
lvim.builtin.bigfile.active = true
lvim.builtin.indentlines.active = false
lvim.builtin.indentlines.mine = true -- NOTE: using v3 till fixed upstream in lunarvim
lvim.builtin.mind = { active = true, root_path = "~/.mind" } -- enable/disable mind.nvim
lvim.builtin.symbols_usage = { active = true } -- enable/disable symbols-usage.nvim
lvim.builtin.trouble = { active = true } -- enable/disable trouble.nvim
lvim.builtin.markdown = { active = false } -- enable/disable markdown.nvim
lvim.builtin.project.mine = true
lvim.builtin.which_key.active = true -- pin to v2.0.1
lvim.builtin.which_key.mine = true -- pin to v2.0.1

-- Custom User Config
-- =========================================
local user = vim.env.USER
if user and user == "abz" then
  lvim.reload_config_on_save = true
  require("user.custom_user").config()
end

-- Additional Actions Based on Custom User Config
-- =========================================
if lvim.builtin.winbar_provider == "navic" then
  vim.opt.showtabline = 1
  lvim.keys.normal_mode["<tab>"] =
    "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<cr>"
  lvim.builtin.bufferline.active = false
  lvim.builtin.breadcrumbs.active = true
end
if lvim.builtin.breadcrumbs.active and lvim.builtin.noice.active then
  table.insert(lvim.builtin.breadcrumbs.winbar_filetype_exclude, "vim")
end
lvim.builtin.nvimtree.active = lvim.builtin.tree_provider == "nvimtree"
lvim.builtin.latex = {
  view_method = "skim", -- change to zathura if you are on linux
  preview_exec = "/Applications/Skim.app/Contents/SharedSupport/displayline", -- change this to zathura as well
  rtl_support = true, -- if you want to use xelatex, it's a bit slower but works very well for RTL langs
  active = false, -- set to true to enable
}
if lvim.builtin.cursorline.active then
  lvim.lsp.document_highlight = false
end

-- Override Lunarvim defaults
-- =========================================
require("user.builtin").config()

-- StatusLine
-- =========================================
if lvim.builtin.fancy_statusline.active then
  require("user.lualine").config()
end

-- Debugging
-- =========================================
if lvim.builtin.dap.active then
  require("user.dap").config()
end

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
require("user.null_ls").config()

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Autocommands
-- =========================================
require("user.autocommands").config()

-- Additional Keybindings
-- =========================================
require("user.keybindings").config()

-- clangd fix
local cmp_nvim_lsp = require "cmp_nvim_lsp"
local lspconfig = require "lspconfig"
lspconfig.clangd.setup {
  capabilities = cmp_nvim_lsp.default_capabilities(),
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
}

-- 配置 denols
lspconfig.denols.setup {
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
  on_attach = function(client, bufnr)
    for _, tsclient in ipairs(vim.lsp.get_active_clients()) do
      if tsclient.name == "tsserver" then
        tsclient.stop()
      end
    end
  end,
}

-- 配置 tsserver
lspconfig.tsserver.setup {
  on_attach = function(client, bufnr)
    if lspconfig.util.root_pattern("deno.json", "deno.jsonc")(vim.fn.getcwd()) then
      client.stop()
    end
  end,
  root_dir = lspconfig.util.root_pattern("package.json"),
  single_file_support = false,
}
