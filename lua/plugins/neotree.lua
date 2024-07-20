return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", {})
    vim.keymap.set("n", "<leader>rf", ":Neotree reveal<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
		vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>", { noremap = true, silent = true })

		-- Neotree settings
		require("neo-tree").setup({

			close_if_last_window = true,
      popup_border_style = "rounded", -- Rounded border for floating windows
      enable_git_status = true, -- Show git status in the tree
      enable_diagnostics = true, -- Show diagnostics in the tree
      follow_current_file = true,
		})
	end,
}
