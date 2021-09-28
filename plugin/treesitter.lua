require('nvim-treesitter.configs').setup({
    ensure_installed = "all",

    highlight = {
        enable = true,
        custom_captures = {
            ["<capture group>"] = "<highlight group>",
            ["keyword"] = "TSString",
        },
    },

    indent = {
        enable = true
    },
})
