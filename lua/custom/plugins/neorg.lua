return {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false,
    version = "*",
    config = function()
        require("neorg").setup({
            load = {
            ["core.defaults"] = {},
            ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
            ["core.integrations.nvim-cmp"] = {},
            ["core.concealer"] = { config = { icon_preset = "basic" } },
            ["core.esupports.metagen"] = { config = { type = "auto", update_date = true } },
            ["core.qol.toc"] = {},
            ["core.qol.todo_items"] = {},
            ["core.looking-glass"] = {},
            ["core.presenter"] = { config = { zen_mode = "zen-mode" } },
            ["core.export"] = {},
            ["core.export.markdown"] = { config = { extensions = "all" } },
            ["core.summary"] = {},
            ["core.tangle"] = { config = { report_on_empty = false } },
            -- Need Nvim version 0.10.0+ 
            -- ["core.ui.calendar"] = {},
            ["core.journal"] = {
              config = {
                strategy = "nested",
                workspace = "personal",
              },
            },
            ["core.dirman"] = {
                config = {
                    workspaces = {
                        notes = "~/notes/", -- Format: <name_of_workspace> = <path_to_workspace_root>
                        school = "~/notes/school/",
                        personal = "~/notes/personal/",
                        work = "~/notes/work/",
                    },
                }
            }
            }
        })
    end,
}
