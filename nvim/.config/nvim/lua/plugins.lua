return {

    { "arcticicestudio/nord-vim" },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },

    {
        "goolord/alpha-nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    { "justinmk/vim-dirvish" },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter"
    },

    { "numToStr/Comment.nvim" },

    {
        "kylechui/nvim-surround",
        event = "VeryLazy"
    },

    { "lewis6991/gitsigns.nvim" },

    { "tpope/vim-fugitive" },

    { "tpope/vim-repeat" },

    { "tpope/vim-unimpaired" }

}
