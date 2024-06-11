local config = function()
    -- local mason = require("mason")
    require("neoconf").setup({})
    local masonlsp = require("mason-lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local lspconfig = require("lspconfig")
    
    --icons
    local signs = { Error = "❌", Warn = "⚠️ ", Hint = "➕", Info = "ℹ️ ",}
    for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = ""})
    end
    
    --keybinds
    local on_attach = function(clien, bufnr)
        local opts = {noremap = true, silent = true, buffer = bufnr,}
        --set keybinds
        vim.keymap.set("n", "gf", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    end


    -- mason.setup()
    masonlsp.setup({
        ensure_installed ={

            "efm",  --requiere for lsp
    --------------------------------------------------
        --add lsp langugaes--
            "lua_ls",
            "clangd",
            -- "clang_tidy",
            "omnisharp",
        },
        automatic_installation = true,
    })

    local capabilities = cmp_nvim_lsp.default_capabilities()

    ---lua
    lspconfig.lua_ls.setup({   
        on_attach = on_attach,
    })
    local luacheck = require("efmls-configs.linters.luacheck")
    local stylua = require("efmls-configs.formatters.stylua")

    --c++
    lspconfig.clangd.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        clangd = {},
        settings = {
            
        },
    })

    local clangdformat = require("efmls-configs.formatters.clang_format")
    local clangtidy = require("efmls-configs.linters.clang_tidy")

    --c#
    lspconfig.omnisharp.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        omnisharp = {},
        settings = {},
    })
    --uses same formatter as c++
    -- local sonarlint = require("sonarlint")

    --------------------------------------------------
    --EFM
    lspconfig.efm.setup({

        filetypes = {
            "lua",
            "cpp",
            "cs",
        },
        init_options = {
            documentFormatting = true,
            documentRangeFormatting = true,
            hover = true,
            documentSymbol = true,
            codeAction = true,
            completion = true,
        },
        settings = {
            languages =
            {
                -- language = { linters, Formatters },
                lua = {luacheck, stylua},
                cpp = {clangtidy, clangdformat},
                cs  = {clangdformat},
            },
        },

    })

    -- format on save??
end


return{
    "neovim/nvim-lspconfig",
    config = config,
    lazy = false,
    dependencies = {
        "windwp/nvim-autopairs",
        "williamboman/mason.nvim",
        "creativenull/efmls-configs-nvim",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
    },

}
