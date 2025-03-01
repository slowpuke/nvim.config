return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        },
        config = function()
            local lsp_zero = require('lsp-zero')

            lsp_zero.on_attach(function(client, bufnr)
                local opts = {buffer = bufnr, remap = false}
                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                vim.keymap.set("n", "<C-i>", function() vim.lsp.buf.hover() end, opts)
                vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
                vim.keymap.set("n", "<leader>ref", function() vim.lsp.buf.references() end, opts)
                vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
            end)

            require('mason').setup({})
            require('mason-lspconfig').setup({
                ensure_installed = {
                    'bashls',
                    'clangd',
                    'cobol_ls',
                    'lua_ls',
                    -- 'nil_ls',
                    'racket_langserver',
                    'rust_analyzer',
                },
                handlers = {
                    lsp_zero.default_setup,
                    lua_ls = function()
                        local lua_opts = lsp_zero.nvim_lua_ls()
                        require('lspconfig').lua_ls.setup({
                            settings = {
                                Lua = {
                                    diagnostics = {
                                        globals = {
                                            'vim',
                                        },
                                    },
                                    workspace = {
                                        library = vim.api.nvim_get_runtime_file("", true),
                                    },
                                    telemetry = {
                                        enable = false,
                                    },
                                },
                            },
                        })
                    end,
                    require'lspconfig'.rust_analyzer.setup({
                        settings = {
                            ['rust_analyzer'] = {
                                completion = {
                                    autoimport = false
                                }
                            }
                        }
                    })
                },
            })

            -- require'lspconfig'.lua_ls.setup{}
            -- require'lspconfig'.bashls.setup{}
            -- require'lspconfig'.clangd.setup{}
            -- require'lspconfig'.rust_analyzer.setup{}
            -- require'lspconfig'.cobol_ls.setup{}
            -- require'lspconfig'.nil_ls.setup{}
            -- require'lspconfig'.racket_langserver.setup{}

            local cmp = require('cmp')
            local cmp_select = {behavior = cmp.SelectBehavior.Select}

            cmp.setup({
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                sources = {
                    {name = 'nvim_lua'},
                    {name = 'nvim_lsp'},
                    {name = 'path'},
                    {name = 'luasnip', keyword_length = 2},
                    {name = 'buffer', keyword_length = 3},
                },
                formatting = lsp_zero.cmp_format(),
                mapping = cmp.mapping.preset.insert({
                    ['<Tab-S>'] = cmp.mapping.select_prev_item(cmp_select),
                    ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
                    ['<Enter>'] = cmp.mapping.confirm({ select = true }),
                    ['<C-Enter>'] = cmp.mapping.complete(),
                }),
            })

            lsp_zero.set_sign_icons({
                error = '✘',
                warn = "‼",
                hint = '☛',
                info = '»',
            })

        end
    },
}
