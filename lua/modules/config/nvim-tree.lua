return function()
	local present, nvim_tree = pcall(require, "nvim-tree")
	if not present then
		return
	end

	local g = vim.g
	g.nvim_tree_highlight_opened_files = 1 -- 0 by default, will enable folder and file icon highlight for opened files/directories.

	nvim_tree.setup({
		disable_netrw = true,
		hijack_netrw = true,
		open_on_setup = false,
		ignore_ft_on_setup = {},
		open_on_tab = false,
		hijack_cursor = false,
		update_cwd = false,
		update_to_buf_dir = {
			enable = true,
			auto_open = true,
		},
		diagnostics = {
			enable = true,
			icons = {
				hint = "",
				info = "",
				warning = "",
				error = "",
			},
		},
		update_focused_file = {
			enable = false,
			update_cwd = false,
			ignore_list = {},
		},
		system_open = {
			cmd = nil,
			args = {},
		},
		filters = {
			dotfiles = false,
			custom = {},
		},
		git = {
			enable = true,
			ignore = true,
			timeout = 500,
		},
		view = {
			width = 30,
			height = 30,
			hide_root_folder = false,
			side = "left",
			auto_resize = false,
			mappings = {
				custom_only = false,
				list = {},
			},
			number = false,
			relativenumber = false,
			signcolumn = "yes",
		},
		trash = {
			cmd = "trash",
			require_confirm = true,
		},
		actions = {
			change_dir = {
				global = false,
			},
			open_file = {
				window_picker = { enable = false },
				quit_on_open = true,
			},
		},
	})
end
