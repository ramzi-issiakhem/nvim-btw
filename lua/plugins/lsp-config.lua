return {
    {
        "neovim/nvim-lspconfig",

        opts = {
            -- @type lspconfig.options
            servers = {
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

                intelephense = {
                    on_attach = function(client)
                        client.server_capabilities.completionProvider = nil
                    end,
                    settings = { php = { completion = { callSnippet = "Replace" } } },
                    cmd = { "intelephense", "--stdio" },
                    filetypes = { "php", "blade" },
                },

                phpactor = {
                    filetypes = { "php", "blade" },
                    settings = {
                        phpactor = {
                            language_server_phpstan = { enabled = false },
                            language_server_psalm = { enabled = false },
                            inlayHints = {
                                enable = true,
                                parameterHints = true,
                                typeHints = true,
                            },
                        },
                    },
                    cmd = { "phpactor", "language-server", "-vvv" },
                    on_attach = function(client)
                        client.server_capabilities.hoverProvider = nil
                        client.server_capabilities.workspaceSymbolProvider = nil
                        client.server_capabilities.documentSymbolProvider = nil
                        client.server_capabilities.referencesProvider = nil
                        client.server_capabilities.documentFormattingProvider = nil
                        client.server_capabilities.definitionProvider = nil
                        client.server_capabilities.typeDefinitionProvider = nil
                        client.server_capabilities.diagnosticProvider = nil
                        -- client.server_capabilities.completionProvider = nil
                    end,
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

    {
        -- Add the blade-nav.nvim plugin which provides Goto File capabilities
        -- for Blade files.
        "ricardoramirezr/blade-nav.nvim",
        dependencies = {
            "hrsh7th/nvim-cmp",
        },
        ft = { "blade", "php" },
    },
}
