-- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require 'nvim-tree'.setup {
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 27,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    -- 显示 git 状态图标
    git = {
        enable = true
    }
}
