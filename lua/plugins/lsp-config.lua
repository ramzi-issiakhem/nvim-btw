return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- @type lspconfig.options
      servers = {
        intelephense = {
          filetypes = { "php", "blade", "php_only" },
          settings = {
            intelephense = {
              filetypes = { "php", "blade", "php_only" },
              files = {
                associations = { "*.php", "*.blade.php" }, -- Associating .blade.php files as well
                maxSize = 5000000,
              },
            },
          },
        },
        tailwindcss = {
          settings = {
            tailwindCSS = {
              experimental = {
                classRegex = {
                  "@?class\\(([^]*)\\)",
                  "'([^']*)'",
                },
              },
            },
          },
        },
        -- emmet_ls = {
        --   filetypes = {
        --     "astro",
        --     "blade",
        --     "css",
        --     "eruby",
        --     "html",
        --     "htmldjango",
        --     "javascriptreact",
        --     "less",
        --     "pug",
        --     "sass",
        --     "scss",
        --     "svelte",
        --     "typescriptreact",
        --     "vue",
        --   },
        -- },
      },
    },
  },

  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        tailwind = true,
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
    },
    opts = function(_, opts)
      -- original LazyVim kind icon formatter
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item) -- add icons
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },
  {
    "jwalton512/vim-blade",
  },
}
