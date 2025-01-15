-- keymaps.lua for keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- leader key 默认为 \
vim.g.mapleader = " " -- leader key 为空格
vim.g.maplocalleader = " "

local opt = {
    noremap = true,
    silent = true,
}

-- 本地变量
local map = vim.api.nvim_set_keymap
local keymap = vim.keymap
-- ---------- 插入模式 ---------- ---
keymap.set("i", "<C-C>", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- 复制粘贴多行
keymap.set("v", "<A-j>", ":t.<CR>V")
keymap.set("v", "<A-k>", ":t-1<CR>V")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口
keymap.set("n", "<leader>qw", "<C-w>q") -- 关闭窗口
keymap.set("n", "<leader>ow", "<C-w>o") -- 关闭其他窗口
-- keymap.set("n", "<leader>h", "<C-w>h")   -- 左移
-- keymap.set("n", "<leader>j", "<C-w>j")   -- 下移
-- keymap.set("n", "<leader>k", "<C-w>k")   -- 上移
-- keymap.set("n", "<leader>l", "<C-w>l")   -- 右移

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
local pluginKeys = {}

-- nvim-tree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)
map('n', '<A-h>', ':NvimTreeFocus<CR>', opt)
map('n', '<A-r>', ':NvimTreeRefresh<CR>', opt)

-- bufferline 左右Tab切换
map("n", "<C-H>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-L>", ":BufferLineCycleNext<CR>", opt)
-- bufferline 关闭
map("n", "<leader>q", ":BufferLinePickClose<CR>", { noremap = true, silent = true })
map("n", "<leader>qo", ":BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>", { noremap = true, silent = true })
map("n", "<leader>qr", ":BufferLineCloseRight<CR>", { noremap = true, silent = true })
map("n", "<leader>ql", ":BufferLineCloseLeft<CR>", { noremap = true, silent = true })

-- ToggleTerm
map("t", "<C-\\>", "<C-\\><C-n>", opt) -- close

-- comment
-- ctrl + /
pluginKeys.comment = {
    -- Normal 模式快捷键
    toggler = {
        block = "gbc", -- 块注释
    },
    -- Visual 模式
    opleader = {
        line = "gc",
        bock = "gb",
    },
}
map("n", "<C-_>", "gcc", { noremap = false })
map("v", "<C-_>", "gcc", { noremap = false })

return pluginKeys

