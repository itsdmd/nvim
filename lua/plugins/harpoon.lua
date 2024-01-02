return {
	"ThePrimeagen/harpoon",

	config = function()
		require("harpoon").setup()

		vim.keymap.set("n", "<leader>hh", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", {
			desc = "Toggle harpoon menu",
			silent = true,
		})
		vim.keymap.set("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>", {
			desc = "Add file to harpoon",
			silent = true,
		})
		vim.keymap.set("n", "<leader>hn", ":lua require('harpoon.ui').nav_next()<CR>", {
			desc = "Go to next file",
			silent = true,
		})
		vim.keymap.set("n", "<leader>hp", ":lua require('harpoon.ui').nav_prev()<CR>", {
			desc = "Go to prev file",
			silent = true,
		})
		vim.keymap.set("n", "<leader>h1", ":lua require('harpoon.ui').nav_file(1)<CR>", {
			desc = "Go to file 1",
			silent = true,
		})
		vim.keymap.set("n", "<leader>h2", ":lua require('harpoon.ui').nav_file(2)<CR>", {
			silent = true,
		})
		vim.keymap.set("n", "<leader>h3", ":lua require('harpoon.ui').nav_file(3)<CR>", {
			silent = true,
		})
		vim.keymap.set("n", "<leader>h4", ":lua require('harpoon.ui').nav_file(4)<CR>", {
			silent = true,
		})
		vim.keymap.set("n", "<leader>h5", ":lua require('harpoon.ui').nav_file(5)<CR>", {
			silent = true,
		})
		vim.keymap.set("n", "<leader>h6", ":lua require('harpoon.ui').nav_file(6)<CR>", {
			silent = true,
		})
		vim.keymap.set("n", "<leader>h7", ":lua require('harpoon.ui').nav_file(7)<CR>", {
			silent = true,
		})
		vim.keymap.set("n", "<leader>h8", ":lua require('harpoon.ui').nav_file(8)<CR>", {
			silent = true,
		})
		vim.keymap.set("n", "<leader>h9", ":lua require('harpoon.ui').nav_file(9)<CR>", {
			silent = true,
		})
		vim.keymap.set("n", "<leader>h0", ":lua require('harpoon.ui').nav_file(10)<CR>", {
			desc = "Go to file 10",
			silent = true,
		})
	end,
}
