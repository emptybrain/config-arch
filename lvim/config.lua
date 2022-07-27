--[[
lvim is the global options object
Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
-- general
vim.opt.termguicolors                = true
lvim.log.level                       = "warn"
lvim.format_on_save                  = false
lvim.colorscheme                     = "tokyonight"
-- vim.g.moonflyItalics                            = 1
-- vim.g.material_style                            = "deep ocean"
vim.g.tokyonight_style               = "night"
vim.g.tokyonight_dark_float          = true
vim.g.tokyonight_italic_comments     = true
vim.g.tokyonight_transparent_sidebar = true
-- vim.g.tokyonight_colors = { var = "#f5f0f0" }
-- vim.g.tokyonight_italic_keywords     = false
-- vim.g.tokyonight_lualine_bold                   = true
-- vim.g.tokyodark_enable_italic_comment = true
-- vim.g.tokyodark_enable_italic                   = true
-- vim.g.tokyodark_color_gamma                     = "1"

lvim.transparent_window                         = true
lvim.builtin.lualine.options.theme              = "auto"
lvim.builtin.lualine.sections.lualine_a         = { "mode" }
lvim.builtin.lualine.options.globalstatus       = true
lvim.builtin.cmp.completion.keyword_length      = 2
lvim.builtin.cmp.window.completion.border       = "solid"
lvim.builtin.cmp.window.documentation.border    = "solid"
lvim.builtin.cmp.window.completion.side_padding = 1
lvim.builtin.cmp.window.completion.col_offset   = 2
lvim.lsp.float.border                           = "solid"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
vim.cmd([[
  imap <C-l> <Right>
  imap <C-h> <Left>
  inoremap <C-C> <Esc>
  vnoremap <C-h> <Left>
  vnoremap <C-l> <Right>
  vnoremap <C-k> <Up>
  vnoremap <C-j> <Down>
 
  tnoremap <Esc> <C-\><C-n>
  tnoremap <Space>x <C-\><C-n>:q!<CR> 
  
  nnoremap i :noh<cr>i
  set guicursor+=n-v-c:blinkon1

]])
--
lvim.keys.insert_mode["jj"] = false
lvim.keys.insert_mode["jk"] = false
lvim.keys.insert_mode["kj"] = false
--
vim.keymap.set("i", "<C-]>", "<Esc>")
--
vim.keymap.set("v", "<C-]>", "<Esc>")
--
vim.keymap.set("n", "i", "a")
vim.keymap.set("n", "I", "A")
--
vim.keymap.set("n", "a", "i")
vim.keymap.set("n", "A", "I")
--

vim.keymap.set("n", "<C-p>", "%")
---
vim.keymap.set("n", "<C-e>", "$a") -- end line
vim.keymap.set("n", "<C-b>", "_i") -- start line
--
vim.keymap.set("i", "<C-e>", "<Esc>$a") -- insert mode end line
vim.keymap.set("i", "<C-b>", "<Esc>_i") -- insert mode start line
-- Split View
vim.keymap.set("n", "\\", "<cmd>split<cr>")
vim.keymap.set("n", "|", "<cmd>vsplit<cr>")

-- Close  Buffer
vim.keymap.set("n", "C", "<cmd>BufferKill<cr>")


vim.keymap.set("n", "<C-q>", "<cmd>q!<cr>")


lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- unmap a default keymapping
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["h"] = { "<cmd>ToggleTerm start_in_insert=true size=10 direction=horizontal border=normal close_on_exit=true<CR>",
  "Horizontal Term" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
}
lvim.builtin.which_key.mappings["S"] = {
  name = "Session",
  c = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}



-- lvim.builtin.which_key.mappings["S"] = {
--   name = "+SessionManager",
--   l = { "<cmd>SessionManager! load_last_session<cr>", "Load last session" },
--   s = { "<cmd>SessionManager! save_current_session<cr>", "Save this session" },
--   d = { "<cmd>SessionManager! delete_session<cr>", "Delete session" },
--   f = { "<cmd>SessionManager! load_session<cr>", "Search sessions" },
-- }
-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.active = true
lvim.builtin.nvimtree.setup.actions.open_file.resize_window = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.view.mappings = {
  custom_only = false,
  list = {
    { key = "R", action = "refresh" },
    { key = "n", action = "create" },
    { key = "d", action = "remove" },
    { key = "D", action = "trash" },
    { key = "r", action = "rename" },
  }

}
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true


vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })

lvim.lsp.automatic_servers_installation = false



-- local pylsp_opts = {
--   settings = {
--     pylsp = {
--       plugins = {
--         pylsp_mypy = { enabled = true, live_mode = true },
--         pyflakes = { enabled = true },
--         jedi_symbols = { enabled = false },
--         jedi_completion = { enabled = false, eager = false },
--         jedi_hover = { enabled = false },
--         pycodestyle = { enabled = false }
--         -- black = { enabled = true, line_length = 100 },
--       }
--     }
--   }
-- }

-- require("lvim.lsp.manager").setup("pylsp", pylsp_opts)

-- local pyright_opts = {
--   settings = {
--     python = {
--       analysis = {
--         typeCheckingMode = "off",
--         useLibraryCodeForTypes = true,
--         diagnosticsMode = "workspace",
--         reportUnusedVariable = false
--       }
--     }
--   }
-- }
-- require("lspconfig").pyright.setup(pyright_opts)
require("lvim.lsp.manager").setup("jedi_language_server")
require("lvim.lsp.manager").setup("pyright")


-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   --   { command = "isort", filetypes = { "python" } },
--   --   {
--   --     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--   --     command = "prettier",
--   --     ---@usage arguments to pass to the formatter
--   --     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--   --     extra_args = { "--print-with", "100" },
--   --     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--   --     filetypes = { "typescript", "typescriptreact" },
--   --   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
-- { command = "flake8", filetypes = { "python" },
--   extra_args = { "--select", "flake8-mypy" } },
-- { command = "mypy", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
lvim.plugins = {
  { "folke/tokyonight.nvim" },
  --
  --
  {
    "Shatur/neovim-ayu"
  },
  --
  {
    "haishanh/night-owl.vim",
  },
  --
  {
    "bluz71/vim-moonfly-colors",
    as = "moonfly",
  },
  --
  { "tiagovla/tokyodark.nvim" },
  --
  --
  {
    "EdenEast/nightfox.nvim",
    as = "nightfox",
    config = require("nightfox").setup({
      options = {
        dim_inactive = true,

        styles = {
          comments = "italic",
          keywords = "bold",
        }
      }
    })
  },
  --
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  --
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
  },
  --
  -- {
  --   "Shatur/neovim-session-manager",
  --   as = "session_manager",
  --   cmd = "SessionManager",
  --   event = "BufWritePost",
  --   config = function()
  --     return "plugConfig.sessionmanager"
  --   end,
  -- },
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    module = "persistence",
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      }
    end,
  },
  --
  {
    "Pocco81/AutoSave.nvim",
    config = function()
      require("autosave").setup({
        debounce_delay = 60000,
        write_all_buffers = true
      }

      )
    end,
  },
  --
  --
  --
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function() require "lsp_signature".on_attach() end,
  -- },
  --
  --
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    setup = function()
      vim.g.indentLine_enabled = 1
      vim.g.indent_blankline_char = "▏"
      vim.g.indent_blankline_filetype_exclude = { "help", "terminal", "dashboard" }
      vim.g.indent_blankline_buftype_exclude = { "terminal" }
      vim.g.indent_blankline_show_trailing_blankline_indent = false
      vim.g.indent_blankline_show_first_indent_level = false
    end
  },
  --
  {
    "itchyny/vim-cursorword",
    event = { "BufEnter", "BufNewFile" },
    config = function()
      vim.api.nvim_command("augroup user_plugin_cursorword")
      vim.api.nvim_command("autocmd!")
      vim.api.nvim_command("autocmd FileType NvimTree,lspsagafinder,dashboard,vista let b:cursorword = 0")
      vim.api.nvim_command("autocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endif")
      vim.api.nvim_command("autocmd InsertEnter * let b:cursorword = 0")
      vim.api.nvim_command("autocmd InsertLeave * let b:cursorword = 1")
      vim.api.nvim_command("augroup END")
    end
  },
  --
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar1<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },
  --
  {
    "tpope/vim-fugitive"
  },
  --
  -- {
  --   "DanilaMihailov/beacon.nvim"
  -- },
  --
  {
    "edluffy/specs.nvim",
    config = function()
      require('specs').setup({
        show_jumps = true,
        min_jump = 2,
        popup = {
          inc_ms = 10,
          blend = 10,
          width = 20,
          winhl = "Pmenu",
          fader = require('specs').linear_fader,
          resizer = require('specs').shrink_resizer
        },
        ignore_filetypes = {},
        ignore_buftypes = {
          nofile = true,
        }
      })
    end,
  }
}
-- Autocommands (https://neovim.io/doc/user/autocmd.html)

-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
