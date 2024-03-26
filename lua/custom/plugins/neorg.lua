return {
    "nvim-neorg/neorg",
    -- ft = "norg",
    -- dependencies = { "luarocks.nvim" },
    -- cmd = "Neorg",
    -- "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false,
    version = "*",
    -- put any other flags you wanted to pass to lazy here!
    config = function()
        require("neorg").setup({
            load = {
            ["core.defaults"] = {},
          ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
          ["core.integrations.nvim-cmp"] = {},
          ["core.concealer"] = { config = { icon_preset = "diamond" } },
            ["core.dirman"] = {
                config = {
                    workspaces = {
                        notes = "~/notes/", -- Format: <name_of_workspace> = <path_to_workspace_root>
                        school = "~/notes/school/",
                    },
                    -- index = "~/notes/index.norg", -- The name of the main (root) .norg file
                }
            }
            }
        })
    end,
    -- run = ":Neorg sync-parsers",
    -- lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    -- version = "*", -- Pin Neorg to the latest stable release
    -- ft = "norg",
    -- priority = 30,
    -- config = function ()
    --     require('neorg').setup {
    --         load = {
    --         ["core.defaults"] = {},
    --             ["core.dirman"] = {
    --                 config = {
    --                     workspaces = {
    --                         notes = "~/notes", -- Format: <name_of_workspace> = <path_to_workspace_root>
    --                         school = "~/notes/school",
    --                     },
    --                     index = "~/notes/index.norg", -- The name of the main (root) .norg file
    --                 }
    --             }
    --         }
    --     }
    -- end,
    -- config = true,
    -- opts = {
    --     load = {
    --       ["core.defaults"] = {},
    --       ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
    --       ["core.integrations.nvim-cmp"] = {},
    --       ["core.concealer"] = { config = { icon_preset = "diamond" } },
    --       ["core.dirman"] = {
    --         config = {
    --             workspaces = {
    --                 notes = "~/notes", -- Format: <name_of_workspace> = <path_to_workspace_root>
    --                 school = "~/notes/school",
    --             },
    --             index = "~/notes/index.norg", -- The name of the main (root) .norg file
    --         }
    --     }
    --     }
    --
    -- }
}
