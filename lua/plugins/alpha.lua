return {
    "goolord/alpha-nvim",
    dependencies = {
	"nvim-tree/nvim-web-devicons",
    },
    event = "VimEnter",  -- load on startup
    config = function()
	local alpha = require("alpha")
	local dashboard = require("alpha.themes.dashboard")

	-- Buttons
	dashboard.section.buttons.val = {
	dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
	dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
	dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
	dashboard.button("s", "  Settings", ":e ~/.config/nvim/init.lua<CR>"),
	dashboard.button("q", "  Quit", ":qa<CR>"),
	}

	-- Footer (optional)
	dashboard.section.footer.val = "I use Vim, btw."

	-- Layout and setup
	alpha.setup(dashboard.config)
    end,
}
