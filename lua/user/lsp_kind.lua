local M = {}

M.mason = {
  package_pending = " ",
  package_installed = "󰄳 ",
  package_uninstalled = " 󰚌",
}

M.cmp_kind = {
  Array = " ",
  Boolean = "󰨙 ",
  Class = " ",
  Codeium = "󰘦 ",
  Collapsed = " ",
  Color = " ",
  Constant = "",
  Constructor = " ",
  Control = " ",
  Copilot = " ",
  Default = " ",
  Enum = "ℰ",
  EnumMember = " ",
  Event = " ",
  Field = "󰜢",
  File = "󰈚 ",
  Folder = " ",
  Function = " ",
  Implementation = "",
  Interface = " ",
  Key = " ",
  Keyword = " ",
  Macro = " ",
  Method = "ƒ",
  Module = " ",
  Namespace = "󰦮 ",
  Null = " ",
  Number = "󰎠 ",
  Object = " ",
  Operator = " ",
  Package = " ",
  Parameter = "",
  Property = " ",
  Reference = " ",
  Snippet = " ", -- ""," "," "
  spell = "󰓆",
  StaticMethod = "",
  String = "󰅳 ", -- " ","𝓐 " ," " ,"󰅳 "
  Struct = "󰙅",
  TabNine = "󰏚 ",
  Text = " ",
  TypeAlias = "",
  TypeParameter = " ",
  Undefined = "",
  Unit = "󰑭",
  Value = " ",
  Variable = "󰀫 ",
}

M.icons = {
  error = " ",
  warn = " ",
  info = "",
  hint = " ",
  code_action = "",
  code_lens_action = "󰄄",
  test = "",
  docs = "",
  clock = "󰥔 ",
  calendar = " ",
  buffer = " ",
  settings = " ",
  ls_inactive = "󰒎 ",
  ls_active = "󰒍 ",
  question = " ",
  screen = "󰐯",
  dart = " ",
  config = " ",
  git = " ",
  magic = " ",
  exit = " ",
  repo = "",
  term = " ",
}

M.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unmerged = "",
    added = "",
    deleted = "",
    modified = "",
    renamed = "",
    untracked = "",
    ignored = "",
    unstaged = "󱍯",
    staged = "",
    conflict = "",
  },
  folder = {
    arrow_closed = "",
    arrow_open = "",
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
  },
}

M.todo_comments = {
  FIX = " ",
  TODO = " ",
  HACK = " ",
  WARN = " ",
  PERF = " ",
  NOTE = " ",
  ERROR = " ",
  REFS = "",
  SHIELD = "",
}

M.numbers = {
  "󰼏 ",
  "󰼐 ",
  "󰼑 ",
  "󰼒 ",
  "󰼓 ",
  "󰼔 ",
  "󰼕 ",
  "󰼖 ",
  "󰼗 ",
  "󰿪 ",
}

M.file_icons = {
  Brown = { "" },
  Aqua = { "" },
  LightBlue = { "", "" },
  Blue = { "", "", "", "", "", "", "", "", "", "", "", "", "" },
  DarkBlue = { "", "" },
  Purple = { "", "", "", "", "" },
  Red = { "", "", "", "", "", "" },
  Beige = { "", "", "" },
  Yellow = { "", "", "λ", "", "" },
  Orange = { "", "" },
  DarkOrange = { "", "", "", "", "" },
  Pink = { "", "" },
  Salmon = { "" },
  Green = { "", "", "", "", "", "" },
  LightGreen = { "", "", "", "﵂" },
  White = { "", "", "", "", "", "" },
}

return M

