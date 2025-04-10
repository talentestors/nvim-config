" Lazy 插件管理
lua require('plugins')
lua require('conf/nvim-treesitter-context')
lua require('conf/nvim-treesitter')
lua require('conf/nvim-tree')
lua require('conf/bufferline')
lua require('conf/toggleterm')
lua require('conf/lualine')
lua require("conf/telescope")
lua require("conf/comment")
lua require("conf/autopairs")
lua require("conf/gitsigns")

" LSP
lua require("lsp/setup")
lua require("lsp/nvim-cmp")

" lua neovim 配置
lua require('options')
lua require('keymaps')
lua require('colorscheme')
lua require('autocmds')

" 编码配置（Neovim 专用）
set encoding=utf-8            " Neovim 内部编码强制为 UTF-8（不可修改）
set fileencoding=utf-8        " 新文件保存时的默认编码
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin1  " 自动检测文件编码的优先级
" set mouse=a        " 启用鼠标

" 退出vim重置光标
:autocmd VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[ q")

set guifont=Maple\ Mono\ NF\ CN:h12

" add tab space
" set ts=4 " tabstop
" set softtabstop=4 " 在编辑模式的时候按退格键的时候退回缩进的长度
" set shiftwidth=4 " 每一级缩进的长度
" expandtab 缩进用空格来表示，noexpandtab 则是用制表符表示一个缩进。
" set expandtab
" set autoindent " 自动缩进

