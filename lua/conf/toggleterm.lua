-- local shell 
-- zsh
if vim.o.shell:match('%f[%w]zsh%f[^%w]') then
    vim.o.shellcmdflag = '-s'
end
-- termainl
local opt = require("toggleterm").setup({
    size = function(term)
        if term.direction == "horizontal" then
            return 10
        elseif term.direction == "vertical" then
            return math.floor(vim.o.columns * 0.2) -- 使用 math.floor 确保返回整数
        else
            return 12 -- 默认大小 20
        end
    end,
    open_mapping = [[<c-\>]],
    -- 打开新终端后自动进入插入模式
    start_in_insert = true,
    -- 在当前buffer的下方打开新终端
    direction = 'horizontal',
    shell = vim.o.shell
})
