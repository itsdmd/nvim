return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        close_if_last_window = true,
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        filesystem = {
            filtered_items = {
                visible = true,
                show_hidden_count = false,
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_by_name = {".git", ".DS_Store", "thumbs.db"},
                never_show = {}
            }
        }
    }
}
