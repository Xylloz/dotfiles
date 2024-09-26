return {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    --dependencies = { { "echasnovski/mini.icons", opts = {} } },
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    config = function()
        require("oil").setup({
            show_hidden = true,
            natural_order = true,
            is_always_hidden = function(name, _)
                return name == ".." or name == ".git"
            end,
        })
    end,
}
