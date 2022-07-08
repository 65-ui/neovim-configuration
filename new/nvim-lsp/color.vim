" HACK: 主题  Plug 'EdenEast/nightfox.nvim'
lua << EOF
-- Default options
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,    -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,   -- Non focused panes set to alternative background
    styles = {              -- Style to be applied to different syntax groups
      comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  }
})

-- setup must be called before loading
-- NOTE: nightfox dayfox dawnfox duskfox nordfox terafox
-- vim.cmd("colorscheme nightfox")
EOF


" HACK: 主题  Plug 'catppuccin/nvim', {'as': 'catppuccin'}
lua << EOF
local catppuccin = require("catppuccin")
catppuccin.setup(
{
transparent_background = false,
term_colors = false,
styles = {
	comments = "italic",
	conditionals = "italic",
	loops = "NONE",
	functions = "NONE",
	keywords = "NONE",
	strings = "NONE",
	variables = "NONE",
	numbers = "NONE",
	booleans = "NONE",
	properties = "NONE",
	types = "NONE",
	operators = "NONE",
},
integrations = {
	 treesitter = true,
	native_lsp = {
		enabled = true,
		virtual_text = {
			errors = "italic",
			hints = "italic",
			warnings = "italic",
			information = "italic",
		},
		underlines = {
			errors = "underline",
			hints = "underline",
			warnings = "underline",
			information = "underline",
		},
	},
	lsp_trouble = false,
	cmp = true,
	lsp_saga = false,
	gitgutter = false,
	gitsigns = true,
	telescope = true,
	nvimtree = {
		enabled = true,
		show_root = false,
		transparent_panel = false,
	},
	neotree = {
		enabled = false,
		show_root = false,
		transparent_panel = false,
	},
	which_key = false,
	indent_blankline = {
		enabled = true,
		colored_indent_levels = false,
	},
	dashboard = true,
	neogit = false,
	vim_sneak = false,
	fern = false,
	barbar = false,
	bufferline = true,
	markdown = true,
	lightspeed = false,
	ts_rainbow = false,
	hop = false,
	notify = true,
	telekasten = true,
	symbols_outline = true,
}
}
)
-- Lua
-- 如果您想“即时”切换 Catpuccin 风味，您可以使用该:Catppuccin <flavour>命令。
-- vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha
-- vim.cmd[[colorscheme catppuccin]]
EOF

" HACK: 主题  Plug 'projekt0n/github-nvim-theme'
" lua << EOF
" -- Example config in Lua
" require("github-theme").setup({
"   function_style = "italic",
"   sidebars = {"qf", "vista_kind", "terminal", "packer"},
"
"   -- Change the "hint" color to the "orange" color, and make the "error" color bright red
"   colors = {hint = "orange", error = "#ff0000"},
"
"   -- Overwrite the highlight groups
"   overrides = function(c)
"     return {
"       htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
"       DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
"       -- this will remove the highlight groups
"       TSField = {},
"     }
"   end
" })
" -- Lua
" require("github-theme").setup({
" comment_style = "NONE",
" keyword_style = "NONE",
" function_style = "NONE",
" variable_style = "NONE"
" -- other config
" })
" -- Lua
" require("github-theme").setup({
" -- HACK: dimmed dark_default dark_colorblind light light_default light_colorblind
" --  theme_style = "dark",
" 	  -- other config
" 		})
" EOF

" HACK: 主题  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
lua << EOF
-- Example config in Lua  
--NOTE: night storm day
vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_functions = false
vim.g.tokyonight_italic_comments=false
vim.g.tokyonight_italic_keywords=false
vim.g.tokyonight_day_brightness=0.3
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
EOF
" Vim Script
let g:lightline = {'colorscheme': 'tokyonight'}
" HACK: 主题  Plug 'navarasu/onedark.nvim'
lua << EOF
-- Lua
require('onedark').setup  {
	-- Main options --
--dark, darker, cool, deep, warm, warmer, light
	style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
	transparent = false,  -- Show/hide background
	term_colors = true, -- Change terminal color as per the selected theme style
	ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
	cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
	-- toggle theme style ---
	toggle_style_key = '<leader>ts', -- Default keybinding to toggle
	toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

	-- Change code style ---
	-- Options are italic, bold, underline, none
	-- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
	code_style = {
		comments = 'none',
		keywords = 'none',
		functions = 'none',
		strings = 'none',
		variables = 'none'
		},

	-- Custom Highlights --
	colors = {}, -- Override default colors
	highlights = {}, -- Override highlight groups

	-- Plugins Config --
	diagnostics = {
		darker = true, -- darker colors for diagnostic
		undercurl = true,   -- use undercurl instead of underline for diagnostics
		background = true,    -- use background color for virtual text
		},
	}
-- require('onedark').load()
EOF
" HACK: 主题  Plug 'sonokai'
" let g:airline_theme = 'sonokai'
" let g:sonokai_style =  'default'
" let g:sonokai_better_performance = 1
" " let g:lightline.colorscheme = 'sonokai'
" let g:sonokai_diagnostic_text_highlight=1
" colorscheme sonokai
"
" HACK: Plug 'christianchiarulli/nvcode-color-schemes.vim'
" configure nvcode-color-schemes
" let g:nvcode_termcolors=256
"
" syntax on
" colorscheme nvcode " Or whatever colorscheme you make
"
"
" " checks if your terminal has 24-bit color support
" if (has("termguicolors"))
"     set termguicolors
"     hi LineNr ctermbg=NONE guibg=NONE
" endif
"
" HACK: Plug 'tanvirtin/monokai.nvim' 
lua <<EOF
-- require('monokai').setup {}
-- require('monokai').setup { palette = require('monokai').pro  }
-- require('monokai').setup { palette = require('monokai').soda  }
-- require('monokai').setup { palette = require('monokai').ristretto  }
EOF

