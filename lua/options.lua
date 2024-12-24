-- options.lua for option of neovim
local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true

-- 包裹
opt.wrap = true

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 设置 timeoutlen 为等待键盘快捷键连击时间500毫秒，可根据需要设置
-- 遇到问题详见：https://github.com/nshen/learn-neovim-lua/issues/1
opt.timeoutlen = 500

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 编码
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
-- vim.cmd[[colorscheme tokyonight-moon]]

-- 禁止创建备份文件
opt.backup = false
opt.writebackup = false
opt.swapfile = false

-- 是否显示不可见字符
vim.o.list = false
-- 不可见字符的显示，这里只把空格显示为一个点
vim.o.listchars = "space:·,tab:··"
-- 补全增强
vim.o.wildmenu = true
