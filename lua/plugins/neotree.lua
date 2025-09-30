return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false, -- neo-tree wilr lazily load itself
    keys = {
	{ "<leader>e", ":Neotree toggle<CR>", desc = "Toggle Neo-tree" },
    },
}
