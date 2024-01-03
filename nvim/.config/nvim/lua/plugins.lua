return {

    { "arcticicestudio/nord-vim" },

    { "justinmk/vim-dirvish" },

    { "tpope/vim-repeat" },

    { "tpope/vim-unimpaired" },

    { "tpope/vim-fugitive" },

    {
        "lewis6991/gitsigns.nvim",
        config = true
    },

    {
        "numToStr/Comment.nvim",
        config = true
    },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true
    },

    {
        "kylechui/nvim-surround",
        event = "VeryLazy",
        config = true
    },

    {
        "goolord/alpha-nvim",
        config = function ()
            local alpha = require("alpha")
            local startify = require("alpha.themes.startify")
            startify.nvim_web_devicons.enabled = false
            alpha.setup(startify.config)
        end
    },

    {
        "nvim-lualine/lualine.nvim",
        opts = {
            sections = {
                lualine_x = {
                    "encoding",
                    {
                        "fileformat",
                        symbols = { unix = "unix", dos = "dos", mac = "mac" }
                    },
                    "filetype"
                }
            }
        },
        config = true
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        main = "nvim-treesitter.configs",
        opts = {
            ensure_installed = {
                "bash",
                "lua",
                "vim", "vimdoc",
                "json",
                "markdown", "markdown_inline",
                "c", "cpp",
                "python",
                "go", "gomod",
                "rust",
                "arduino",
                "dockerfile",
                "html", "css", "javascript",
                "sql",
                "query"
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            },
            indent = { enable = true }
        },
        config = true
    }

}
