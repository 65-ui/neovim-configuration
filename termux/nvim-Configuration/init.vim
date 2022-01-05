" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|



" ===
" === Create a _machine_specific.vim file to adjust machine specific stuff, like python interpreter location
" ===
let has_machine_specific_file = 1
if empty(glob('~/.config/nvim/_machine_specific.vim'))
	let has_machine_specific_file = 0
	silent! exec "!cp ~/.config/nvim/default_configs/_machine_specific_default.vim ~/.config/nvim/_machine_specific.vim"
endif
source $XDG_CONFIG_HOME/nvim/_machine_specific.vim




" ===
" === Install Plugins with Vim-Plug
" ===

call plug#begin('$HOME/.config/nvim/plugged')

"自定义插件
if filereadable(expand('~/.config/nvim/nvim-Configuration/.vimrc.custom.plugins'))
	source ~/.config/nvim/nvim-Configuration/.vimrc.custom.plugins
endif


call plug#end()
set re=0

" experimental
set lazyredraw
"set regexpengine=1



" Open the _machine_specific.vim file if it has just been created
if has_machine_specific_file == 0
exec "e ~/.config/nvim/_machine_specific.vim"
endif

" 系统配置
if filereadable(expand('~/.config/nvim/nvim-Configuration/.vimrc.System Configuration'))
	source ~/.config/nvim/nvim-Configuration/.vimrc.System Configuration
endif
"
"

"自定义配置
if filereadable(expand('~/.config/nvim/nvim-Configuration/.vimrc.custom.config'))
    source ~/.config/nvim/nvim-Configuration/.vimrc.custom.config
endif

