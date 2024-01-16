return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {
      config = function(plugin, opts)
        -- run default AstroNvim config
        require "plugins.configs.nvim-autopairs"(plugin, opts)
        -- require Rule function
        local Rule = require "nvim-autopairs.rule"
        local npairs = require "nvim-autopairs"
        npairs.add_rules({
          Rule("$$","$$","tex")
            :with_pair(function(opts)
                print(vim.inspect(opts))
                if opts.line=="aa $$" then
                    -- don't add pair on that line
                    return false
                end
            end)
      }
) -- this is equalent to setup({}) function
        end,
    },
}
