--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
-- vim.o.background = "dark"
-- vim.o.background = "light"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "html",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skiipped for the current filetype
-- vim.tbl_map(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
-- lvim.plugins = {
--     {"folke/tokyonight.nvim"},
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })

vim.opt.cmdheight = 1
vim.opt.relativenumber = true
lvim.lsp.diagnostics.virtual_text = true


-- TODO:安装插件
lvim.plugins = {
  -- 主题
  { "folke/tokyonight.nvim" },
  -- monokai monokai_pro monokai_soda monokai_ristretto
  { 'tanvirtin/monokai.nvim' },
  { 'olimorris/onedarkpro.nvim' },
  { 'ful1e5/onedark.nvim' },
  { 'EdenEast/nightfox.nvim' },
  -- 显示颜色的插件
  { 'RRethy/vim-hexokinase' },
  -- 键入时的 LSP 签名提示 ray-x/lsp_signature.nvim
  { 'ray-x/lsp_signature.nvim' },
  -- 缩进空白行
  { 'lukas-reineke/indent-blankline.nvim' },
  -- 项目中突出显示、列出和搜索待办事项
  {
    "folke/todo-comments.nvim",
  },
  --vVSCode💡对于neovim 的内置LSP
  {
    'kosayoda/nvim-lightbulb',
    requires = 'antoinemadec/FixCursorHold.nvim',
  },
  { 'windwp/nvim-ts-autotag' },
  -- Lua
  {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter"
  },
  -- Lua
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },
  { 'mg979/vim-visual-multi' },
  { 'p00f/nvim-ts-rainbow' },
}

-- 键入时的 LSP 签名提示 ray-x/lsp_signature.nvim
local cfg = {
  bind = true,
  doc_lines = 10,
  floating_window = true,
  floating_window_above_cur_line = true,
  floating_window_off_x = 1,
  floating_window_off_y = 1,
  fix_pos = true,
  hint_enable = true,
  hint_prefix = ' ',
  hint_scheme = 'String',
  hi_parameter = 'Search',
  max_height = 12,
  max_width = 40,
  handler_opts = {
    border = 'single',
  },
  always_trigger = false,
  check_completion_visible = true,
  extra_trigger_chars = { "(", "," },
  zindex = 200,
  padding = '',
  transparency = nil,
  shadow_blend = 22,
  shadow_guibg = '#FFC300',
  toggle_key = nil,
}
require "lsp_signature".setup(cfg)


-- 缩进空白行 indent-blankline.nvim'
vim.opt.list = true
-- vim.opt.listchars:append("space:")
-- vim.opt.listchars:append("eol:▫")

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
}


-- 项目中突出显示、列出和搜索待办事项 todo-comments.nvim

require("todo-comments").setup {
  signs = true,
  sign_priority = 9,
  keywords = {
    FIX = {
      icon = ' ',
      color = 'error',
      alt = { 'FIXME', 'BUG', 'FIXIT', 'ISSUE' },
    },
    TODO = { icon = ' ', color = '#ffbb00' },
    HACK = { icon = ' ', color = 'warning' },
    WARN = { icon = ' ', color = 'warning', alt = { 'WARNING', 'XXX', 'WARN' } },
    PERF = { icon = ' ', alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' } },
    NOTE = { icon = ' ', color = 'hint', alt = { 'INFO' } },
  },
  merge_keywords = true,
  highlight = {
    before = '',
    keyword = 'wide',
    after = 'fg',
    pattern = [[.*<(KEYWORDS)\s*:]],
    comments_only = true,
    max_line_len = 400,
    exclude = {},
  },
  colors = {
    error = { 'DiagnosticError', 'ErrorMsg', '#DC2626' },
    warning = { 'DiagnosticWarning', 'WarningMsg', '#FBBF24' },
    info = { 'DiagnosticInfo', '#ffbb00' },
    hint = { 'DiagnosticHint', '#10B981' },
    default = { 'Identifier', '#7C3AED' },
  },
  search = {
    command = 'rg',
    args = {
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
    },
  }
}

-- VSCode💡对于neovim 的内置LSP

require('nvim-lightbulb').setup({ autocmd = { enabled = true } })

-- windwp/nvim-ts-autotag
require 'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}

-- SmiteshP/nvim-gps

-- Lua
-- Customized config
require("nvim-gps").setup({

  disable_icons = false, -- Setting it to true will disable all icons

  icons = {
    ["class-name"] = ' ', -- Classes and class-like objects
    ["function-name"] = ' ', -- Functions
    ["method-name"] = ' ', -- Methods (functions inside class-like objects)
    ["container-name"] = '⛶ ', -- Containers (example: lua tables)
    ["tag-name"] = '炙' -- Tags (example: html tags)
  },

  -- Add custom configuration per language or
  -- Disable the plugin for a language
  -- Any language not disabled here is enabled by default
  languages = {
    -- Some languages have custom icons
    ["css"] = {},
    ["html"] = {},
    ["tsx"] = {
      icons = {
        ["hook-name"] = "ﯠ ",
      }
    },
    ["scss"] = {
      icons = {
        ["scss-name"] = "",
        ["scss-mixin-name"] = "@mixin ",
        ["scss-include-name"] = "@include ",
        ["scss-keyframes-name"] = "@keyframes ",
      }
    },
    ["javascript"] = {
      icons = {
        ["array-name"] = ' ',
        ["object-name"] = ' ',
      }
    },
    ["json"] = {
      icons = {
        ["array-name"] = ' ',
        ["object-name"] = ' ',
        ["null-name"] = '[] ',
        ["boolean-name"] = 'ﰰﰴ ',
        ["number-name"] = '# ',
        ["string-name"] = ' '
      }
    },
    ["latex"] = {
      icons = {
        ["title-name"] = "# ",
        ["label-name"] = " ",
      },
    },
    ["norg"] = {
      icons = {
        ["title-name"] = " ",
      },
    },
    ["toml"] = {
      icons = {
        ["table-name"] = ' ',
        ["array-name"] = ' ',
        ["boolean-name"] = 'ﰰﰴ ',
        ["date-name"] = ' ',
        ["date-time-name"] = ' ',
        ["float-name"] = ' ',
        ["inline-table-name"] = ' ',
        ["integer-name"] = '# ',
        ["string-name"] = ' ',
        ["time-name"] = ' '
      }
    },
    ["verilog"] = {
      icons = {
        ["module-name"] = ' '
      }
    },
    ["yaml"] = {
      icons = {
        ["mapping-name"] = ' ',
        ["sequence-name"] = ' ',
        ["null-name"] = '[] ',
        ["boolean-name"] = 'ﰰﰴ ',
        ["integer-name"] = '# ',
        ["float-name"] = ' ',
        ["string-name"] = ' '
      }
    },
    ["yang"] = {
      icons = {
        ["module-name"] = " ",
        ["augment-path"] = " ",
        ["container-name"] = " ",
        ["grouping-name"] = " ",
        ["typedef-name"] = " ",
        ["identity-name"] = " ",
        ["list-name"] = "﬘ ",
        ["leaf-list-name"] = " ",
        ["leaf-name"] = " ",
        ["action-name"] = " ",
      }
    },

    -- Disable for particular languages
    -- ["bash"] = false, -- disables nvim-gps for bash
    -- ["go"] = false,   -- disables nvim-gps for golang

    -- Override default setting for particular languages
    -- ["ruby"] = {
    --	separator = '|', -- Overrides default separator with '|'
    --	icons = {
    --		-- Default icons not specified in the lang config
    --		-- will fallback to the default value
    --		-- "container-name" will fallback to default because it's not set
    --		["function-name"] = '',    -- to ensure empty values, set an empty string
    --		["tag-name"] = ''
    --		["class-name"] = '::',
    --		["method-name"] = '#',
    --	}
    --}
  },

  separator = ' > ',

  -- limit for amount of context shown
  -- 0 means no limit
  depth = 0,

  -- indicator used when context hits depth limit
  depth_limit_indicator = ".."
})
-- Lua
local gps = require("nvim-gps")

require("lualine").setup({
  sections = {
    lualine_c = {
      { gps.get_location, cond = gps.is_available },
    }
  }
})

-- "folke/trouble.nvim"
require("trouble").setup {
  {
    position = "bottom", -- position of the list can be: bottom, top, left, right
    height = 10, -- height of the trouble list when position is top or bottom
    width = 50, -- width of the list when position is left or right
    icons = true, -- use devicons for filenames
    mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
    fold_open = "", -- icon used for open folds
    fold_closed = "", -- icon used for closed folds
    group = true, -- group results by file
    padding = true, -- add an extra new line on top of the list
    action_keys = { -- key mappings for actions in the trouble list
      -- map to {} to remove a mapping, for example:
      -- close = {},
      close = "q", -- close the list
      cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
      refresh = "r", -- manually refresh
      jump = { "<cr>", "<tab>" }, -- jump to the diagnostic or open / close folds
      open_split = { "<c-x>" }, -- open buffer in new split
      open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
      open_tab = { "<c-t>" }, -- open buffer in new tab
      jump_close = { "o" }, -- jump to the diagnostic and close the list
      toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
      toggle_preview = "P", -- toggle auto_preview
      hover = "K", -- opens a small popup with the full multiline message
      preview = "p", -- preview the diagnostic location
      close_folds = { "zM", "zm" }, -- close all folds
      open_folds = { "zR", "zr" }, -- open all folds
      toggle_fold = { "zA", "za" }, -- toggle fold of current file
      previous = "k", -- preview item
      next = "j" -- next item
    },
    indent_lines = true, -- add an indent guide below the fold icons
    auto_open = false, -- automatically open the list when you have diagnostics
    auto_close = false, -- automatically close the list when you have no diagnostics
    auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
    auto_fold = false, -- automatically fold a file trouble list at creation
    auto_jump = { "lsp_definitions" }, -- for the given modes, automatically jump if there is only a single result
    signs = {
      -- icons / text used for a diagnostic
      error = "",
      warning = "",
      hint = "",
      information = "",
      other = "﫠"
    },
    use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
  }
}
-- Lua
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", { silent = true, noremap = true })

-- 图标配置
require('nvim-web-devicons').set_default_icon('', '#6d8086')
require('nvim-web-devicons').set_icon {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  },
  c = {
    icon = '',
    name = 'c',
  },
  css = {
    icon = '',
    color = '#264de4',
    name = 'css',
  },
  deb = {
    icon = '',
    name = 'deb',
  },
  Dockerfile = {
    icon = '',
    name = 'Dockerfile',
  },
  html = {
    icon = '',
    color = "#e44d27",
    name = 'html',
  },
  jpeg = {
    icon = '',
    name = 'jpeg',
  },
  jpg = {
    icon = '',
    name = 'jpg',
  },
  js = {
    icon = '',
    color = '#f7ce01',
    name = 'js',
  },
  kt = {
    icon = '󱈙',
    name = 'kt',
  },
  less = {
    icon = "",
    name = "less"
  },
  lock = {
    icon = '',
    name = 'lock',
  },
  lua = {
    icon = '',
    color = '#0fbfcf',
    name = 'lua',
  },
  md = {
    icon = "",
    color = '#359ee6',
    name = "markdown"
  },
  mp3 = {
    icon = '',
    name = 'mp3',
  },
  mp4 = {
    icon = '',
    name = 'mp4',
  },
  out = {
    icon = '',
    name = 'out',
  },
  png = {
    icon = '',
    name = 'png',
  },
  py = {
    icon = '',
    color = '#ffe365',
    name = 'py',
  },
  ['robots.txt'] = {
    icon = 'ﮧ',
    name = 'robots',
  },
  toml = {
    icon = '',
    name = 'toml',
  },
  ts = {
    icon = 'ﯤ',
    color = '#f7ce01',
    name = 'ts',
  },
  ttf = {
    icon = '',
    name = 'TrueTypeFont',
  },
  rb = {
    icon = '',
    name = 'rb',
  },
  rpm = {
    icon = '',
    name = 'rpm',
  },
  vue = {
    icon = '﵂',
    name = 'vue',
  },
  vim = {
    icon = '',
    color = '#43f602',
    name = 'vim',
  },
  woff = {
    icon = '',
    name = 'WebOpenFontFormat',
  },
  woff2 = {
    icon = '',
    name = 'WebOpenFontFormat2',
  },
  xz = {
    icon = '',
    name = 'xz',
  },
  zip = {
    icon = '',
    name = 'zip',
  }
}

require("nvim-treesitter.configs").setup {
  rainbow = {
    enabled = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
