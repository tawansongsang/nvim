local M = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "lua", "vim", "vimdoc" },
          sync_install = false,
          auto_install = false,
          indent = { enable = true },  
          highlight = { 
              enable = true,
              additional_vim_regex_highlighting = false,
          },
        })
    end
}

return { M }
