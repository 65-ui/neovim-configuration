-- 基础配置
require("basic")
-- 快捷键映射
require("keybindings")
-- Packer插件管理
require("plugins")
-- 主题设置
require("colorscheme")
-- 自动命令
require("autocmds")
-- 插件配置
require("plugin-config.nvim-notify")
require("plugin-config.nvim-web-devicons")
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.telescope")
require("plugin-config.dashboard")
require("plugin-config.project")
require("plugin-config.nvim-treesitter")
require("plugin-config.indent-blankline")
require("plugin-config.toggleterm")
require("plugin-config.surround")
require("plugin-config.comment")
require("plugin-config.nvim-autopairs")
require("plugin-config.fidget")
require("plugin-config.autosave")
require("plugin-config.nvim-lastplace")
require("plugin-config.vim-multiple-cursors")
require("plugin-config.nvim-scrollbar")
-- require("plugin-config.nvim-colorizer")

require("plugin-config.todo-comments")
-- 内置LSP
require("lsp.setup")
require("lsp.cmp")
require("lsp.ui")
require("lsp.signature")
-- 格式化
-- require("lsp.formatter")
require("lsp.null-ls")
-- DAP
-- require("dap.vimspector")
require("dap.nvim-dap")
-- utils
-- 复制到windows剪贴板
-- require('utils.fix-yank')
vim.g.undotree_dir = "~/.cache/nvim/undodir"
