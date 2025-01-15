local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
    clear = true,
})

local autocmd = vim.api.nvim_create_autocmd

-- nvim-tree 自动关闭
-- 定义是否为启动后的第一次 BufEnter 事件
-- local is_first_bufenter_after_start = true

-- autocmd("BufEnter", {
--     nested = true,
--     group = 'myAutoGroup',
--     callback = function()
--         -- 如果是启动后的第一个 BufEnter 事件，则跳过处理
--         if is_first_bufenter_after_start then
--             is_first_bufenter_after_start = false
--             return
--         end

--         -- 检查是否是最后一个窗口并且当前缓冲区是 NvimTree
--         if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
--             vim.cmd("quit")
--         end
--     end,
-- })

-- 自动切换输入法，需要安装 im-select
-- https://github.com/daipeihust/im-select
-- autocmd("InsertLeave", {
--     group = myAutoGroup,
--     callback = require("utils.im-select").macInsertLeave,
-- })

-- 进入Terminal 自动进入插入模式
autocmd("TermOpen", {
    group = myAutoGroup,
    command = "startinsert",
})

-- Highlight on yank
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = myAutoGroup,
    pattern = "*",
})

-- 用o换行不要延续注释
autocmd("BufEnter", {
    group = myAutoGroup,
    pattern = "*",
    callback = function()
        vim.opt.formatoptions = vim.opt.formatoptions
            - "o" -- O and o, don't continue comments
            + "r" -- But do continue when pressing enter.
    end,
})
