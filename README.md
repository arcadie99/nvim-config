# Neovim Configuration

This repository contains my personal Neovim configuration, using [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management and various plugins for a rich development experience.

## Installation

To use this configuration, follow these steps:

1. **Clone the Repository**

   ```bash
    git clone https://github.com/arcadie99/nvim-config.git ~/.config/nvim
   ```

2. **Install Neovim**

   Make sure Neovim is installed on your system. You can download it from [the official site](https://neovim.io/) or use your package manager.

3. **Install Plugins**

   Launch Neovim and run the following command to install the plugins:

   ```vim
   :Lazy
   ```

## Configuration Overview

### Basic Settings

Basic settings are defined in `lua/vim-basic-config.lua`, including:

- `expandtab`, `tabstop=4`, `softtabstop=4`, `shiftwidth=4`
- Setting the leader key to space (`" "`)

### Plugins

Plugins are managed with `lazy.nvim`. The following plugins are used:

1. **UI and Theming**
   - `catppuccin.nvim`: A warm and dark theme.
   - `lualine.nvim`: A status line plugin.

2. **File Explorer**
   - `neo-tree.nvim`: A file explorer with support for icons and other features.

3. **LSP and Autocompletion**
   - `mason.nvim` and `mason-lspconfig.nvim`: LSP server management.
   - `nvim-lspconfig`: LSP configurations.
   - `nvim-cmp`, `cmp-nvim-lsp`, `LuaSnip`: Autocompletion and snippet support.

4. **Code Formatting and Linting**
   - `nvimtools/none-ls.nvim`: For integrating formatters and linters like `stylua` and `prettier`.

5. **Fuzzy Finder**
   - `telescope.nvim`: A powerful fuzzy finder with extensions for various types of searches.

6. **Syntax Highlighting**
   - `nvim-treesitter`: Enhanced syntax highlighting and parsing for multiple languages.

### Keybindings

Keybindings are defined throughout the configuration. Notable ones include:

- **General**
  - `<leader>gf`: Format the current buffer.
  - `<leader>nn`: Toggle Neo-tree.
  - `<leader>ca`: Trigger code actions.

- **Telescope**
  - `<C-f>`: Find files.
  - `<leader>ff`: Find files.
  - `<leader>fg`: Live grep.
  - `<leader>fb`: List buffers.
  - `<leader>fh`: Help tags.
  - `<leader>fv`: Git files.

- **LSP**
  - `K`: Hover documentation.
  - `gd`: Go to definition.

- **Autocompletion and Snippets**
  - `<Tab>`: Navigate through completion suggestions and snippet placeholders.

### Custom Settings

Additional custom settings are defined in various files:

- `.luarc.json`: Lua-specific settings, such as globals (`vim`).
- `init.lua`: Entry point for loading the configuration and setting up plugins.

## Additional Notes

- **Updating Plugins**: Use `:Lazy sync` to update plugins to their latest versions.
- **Adding New Plugins**: Add the plugin specification in `lua/plugins.lua` or a specific file under the `lua/plugins/` directory.
