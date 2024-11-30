" Packer 插件管理
lua require('plugins')
lua require('conf/nvim-treesitter-context')
lua require('conf/nvim-treesitter')
lua require('conf/nvim-tree')
lua require('conf/bufferline')
lua require('conf/toggleterm')

" lua neovim 配置
lua require('options')
lua require('keymaps')
lua require('colorscheme')

" lsp
lua require('lsp/setup')
lua require('lsp/nvim-cmp')

" 语法高亮
" syntax on

" 显示行号
" set rnu
" set number
set number relativenumber

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936
set mouse=a        " 启用鼠标

" 退出vim重置光标
:autocmd VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[ q")

set guifont=JetBrainsMono\ Nerd\ Font:h12

" 回车自动换行
" nnoremap <CR> i<CR><Esc>

" add tab space
set ts=4 " tabstop
set softtabstop=4 " 在编辑模式的时候按退格键的时候退回缩进的长度
set shiftwidth=4 " 每一级缩进的长度
" expandtab 缩进用空格来表示，noexpandtab 则是用制表符表示一个缩进。
set expandtab
set autoindent " 自动缩进

