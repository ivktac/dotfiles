local data = assert(vim.fn.stdpath "data") --[[@as string]]

require("telescope").setup {
  defaults = {},
  extensions = {
    wrap_results = true,

    fzf = {},
    history = {},
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {},
    },
  },
}

pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "smart_history")
pcall(require("telescope").load_extension, "ui-select")

local builtin = require "telescope.builtin"

vim.keymap.set("n", "<space>fd", builtin.find_files)
vim.keymap.set("n", "<space>ft", function()
  return builtin.git_files { cwd = vim.fn.expand "%:h" }
end)
vim.keymap.set("n", "<space>fh", builtin.help_tags)
vim.keymap.set("n", "<space>fb", builtin.buffers)
vim.keymap.set("n", "<space>/", builtin.current_buffer_fuzzy_find)

vim.keymap.set("n", "<space>gw", builtin.grep_string)

vim.keymap.set("n", "<space>fa", function()
  ---@diagnostic disable-next-line: param-type-mismatch
  builtin.find_files { cwd = vim.fs.joinpath(vim.fn.stdpath "data", "lazy") }
end)

vim.keymap.set("n", "<space>en", function()
  builtin.find_files { cwd = vim.fn.stdpath "config" }
end)
