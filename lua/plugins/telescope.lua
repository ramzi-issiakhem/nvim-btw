return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>/", false },
    { "<leader>ff",  "<cmd>Telescope find_files no_ignore=true<cr>", desc = "[A]ll [F]iles"},
    {"<leader>sS", function() require('telescope.builtin').search_history() end,  desc = "[S]earch [H]istory"  },
    { "<leader>ss", function() require("telescope.builtin").builtin() end, desc = "[S]earch [S]elect Telescope" },
    { "<leader>sh", function() require("telescope.builtin").help_tags() end, desc = "[S]earch [H]elp" },
    { "<leader>sk", function() require("telescope.builtin").keymaps() end, desc = "[S]earch [K]eymaps" },
    { "<leader>sd", function() require("telescope.builtin").diagnostics() end, desc = "[S]earch [D]iagnostics" },
    { "<leader>sr", function() require("telescope.builtin").resume() end, desc = "[S]earch [R]esume" },
    { "<leader>sR", function() require("telescope.builtin").registers() end, desc = "[S]earch [R]egister" },
    { "<leader>sm", function() require("telescope.builtin").man_pages() end, desc = "[S]earch [M]an Pages" },
    { "<leader>sc", function() require("telescope.builtin").commands() end, desc = "[S]earch [C]ommands" },
    { "<leader>sC", function() require("telescope.builtin").command_history() end, desc = "[S]earch [C]ommands [H]istory" },
    { "<leader>sg", function() require("telescope.builtin").live_grep() end, desc = "[G]rep [W]orkspace" },
    { "<leader>sG", function() grepInDir() end, noremap = true, silent = true, desc = "[G]rep [D]irectory" },
    { "<leader>s<leader>", function() grepBuffer() end, desc = "[G]rep in Open Files" },
    { "<leader>sw", function() require("telescope.builtin").grep_string() end, desc = "[S]earch cursor [W]ord" },
    { "<leader>sf", function() require("telescope.builtin").current_buffer_fuzzy_find() end, desc = "[F]uzzy [F]ind buffer" },
    { "<leader>so", function() require("telescope.builtin").vim_options() end, desc = "[S]earch [O]ptions" },
    { "<leader><leader>", function() require("telescope.builtin").buffers() end, desc = "[ ] Find buffer" },
    { "<leader>fr", function() require("telescope.builtin").oldfiles() end, desc = "[R]ecent [F]iles" },
    { "<leader>fa", function() require("telescope.builtin").find_files() end, desc = "[A]ll [F]iles" },
    { "<leader>ff", function() require("telescope.builtin").fd() end, desc = "[fast] [F]iles" },
    { "<leader>fg", function() require("telescope.builtin").git_files() end, desc = "[S]earch in [G]it files" },
    { "<leader>fd", function() findInDir() end, desc = "[S]elect [D]irectory", noremap = true, silent = true },
    { "<leader>fn", function() findInNvim() end, desc = "[S]earch [N]eovim files" },



  -- Disabling by default plugins:
   { "<leader>sW",false},
   { "<leader>s\"",false},
   { "<leader>sW",false},
   { "<leader>sW",false},
   { "<leader>sW",false},
   { "<leader>sW",false},
   { "<leader>sa",false},
   { "<leader>sa",false},
   { "<leader>sb",false},
   { "<leader>sM",false},
   { "<leader>sl",false},
   { "<leader>sH",false},
   { "<leader>sj",false},
   { "<leader>sD",false},

   { "<leader>fe",false},
   { "<leader>fE",false},
   { "<leader>fF",false},
   { "<leader>fc",false},
   { "<leader>fb",false},
   { "<leader>fR",false},
 },
}

--
-- -- spell
-- 	vim.keymap.set("n", "<leader>sp", builtin.spell_suggest, { desc = "[S][P]ell" })
-- 	vim.keymap.set("n", "<leader>sP", "<cmd>set spell!<cr>", { desc = "[S]pell [T]oggle" })
-- 	-- search
--
