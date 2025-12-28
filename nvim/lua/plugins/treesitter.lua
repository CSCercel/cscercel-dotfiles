return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
	    local configs = require("nvim-treesitter.configs")
	    configs.setup({
	        highlight = {
		    enable = true,
	        },
	        indent = { enable = true },
	        autotage = { enable = true },
	        ensure_installed = {
		        "lua",
		        "c",
		        "cpp",
		        "python",
		        "toml",
		        "yaml",
		        "json",
		        "html",
		        "css",
		        "bash",
		        "gitignore",
		        "markdown",
		        "markdown_inline",
		        "arduino",
                "javascript",
                "jsdoc",
                "typescript",
                "go",
	        },
	        auto_install = false,
	})
    end
}
