<div align="center">

# nox-modus.nvim

_A sophisticated monotone dark theme for Neovim_

[![Last commit](https://img.shields.io/github/last-commit/lpuljic/nox-modus.nvim?style=for-the-badge&logo=starship&color=88afa2&logoColor=e4e4e4&labelColor=232323)](https://github.com/lpuljic/nox-modus.nvim/pulse)
[![Stars](https://img.shields.io/github/stars/lpuljic/nox-modus.nvim?style=for-the-badge&logo=starship&color=569cd6&logoColor=e4e4e4&labelColor=232323)](https://github.com/lpuljic/nox-modus.nvim/stargazers)

![Preview](./image/nox-modus.png)

</div>

**nox-modus** is an inspired monotone theme with carefully selected accent colors. The name derives from Latin _"nox modus"_ meaning _"night mode"_, reflecting its dark, elegant aesthetic designed for extended coding sessions.

<details>
<summary><h2>🎨 Palette</h2></summary>

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Hex</th>
      <th>Color</th>
    </tr>
  </thead>
  <tbody>
    <tr><td><strong>bg</strong></td><td><code>#111111</code></td><td style="background:#111111;width:60px;"></td></tr>
    <tr><td><strong>base</strong></td><td><code>#e4e4e4</code></td><td style="background:#e4e4e4;width:60px;"></td></tr>
    <tr><td><strong>dark</strong></td><td><code>#151515</code></td><td style="background:#151515;width:60px;"></td></tr>
    <tr><td><strong>dawn</strong></td><td><code>#a0a0a0</code></td><td style="background:#a0a0a0;width:60px;"></td></tr>
    <tr><td><strong>ash_grey</strong></td><td><code>#b6b6b5</code></td><td style="background:#b6b6b5;width:60px;"></td></tr>
    <tr><td><strong>gravel</strong></td><td><code>#494949</code></td><td style="background:#494949;width:60px;"></td></tr>
    <tr><td><strong>warm_grey</strong></td><td><code>#8c8c8c</code></td><td style="background:#8c8c8c;width:60px;"></td></tr>
    <tr><td><strong>storm_dust</strong></td><td><code>#666666</code></td><td style="background:#666666;width:60px;"></td></tr>
    <tr><td><strong>cascade</strong></td><td><code>#88afa2</code></td><td style="background:#88afa2;width:60px;"></td></tr>
    <tr><td><strong>monsoon</strong></td><td><code>#719597</code></td><td style="background:#719597;width:60px;"></td></tr>
    <tr><td><strong>olivine</strong></td><td><code>#97bc62</code></td><td style="background:#97bc62;width:60px;"></td></tr>
    <tr><td><strong>aluminium</strong></td><td><code>#ababaf</code></td><td style="background:#ababaf;width:60px;"></td></tr>
    <tr><td><strong>gun_powder</strong></td><td><code>#415062</code></td><td style="background:#415062;width:60px;"></td></tr>
    <tr><td><strong>grey_chateau</strong></td><td><code>#96a6c8</code></td><td style="background:#96a6c8;width:60px;"></td></tr>
    <tr><td><strong>zeus</strong></td><td><code>#232323</code></td><td style="background:#232323;width:60px;"></td></tr>
    <tr><td><strong>celestial_blue</strong></td><td><code>#569cd6</code></td><td style="background:#569cd6;width:60px;"></td></tr>
    <tr><td><strong>purple</strong></td><td><code>#b180d7</code></td><td style="background:#b180d7;width:60px;"></td></tr>
    <tr><td><strong>red</strong></td><td><code>#da3633</code></td><td style="background:#da3633;width:60px;"></td></tr>
    <tr><td><strong>mocha</strong></td><td><code>#a47663</code></td><td style="background:#a47663;width:60px;"></td></tr>
    <tr><td><strong>orange</strong></td><td><code>#f3701e</code></td><td style="background:#f3701e;width:60px;"></td></tr>
    <tr><td><strong>sunglow</strong></td><td><code>#fac03b</code></td><td style="background:#fac03b;width:60px;"></td></tr>
    <tr><td><strong>golden_glow</strong></td><td><code>#fce094</code></td><td style="background:#fce094;width:60px;"></td></tr>
    <tr><td><strong>git.DiffAdd</strong></td><td><code>#294841</code></td><td style="background:#294841;width:60px;"></td></tr>
    <tr><td><strong>git.DiffDelete</strong></td><td><code>#6a2835</code></td><td style="background:#6a2835;width:60px;"></td></tr>
    <tr><td><strong>git.DiffChange</strong></td><td><code>#49423c</code></td><td style="background:#49423c;width:60px;"></td></tr>
    <tr><td><strong>git.DiffText</strong></td><td><code>#c5630c</code></td><td style="background:#c5630c;width:60px;"></td></tr>
    <tr><td><strong>diagnostics.DiagnosticError</strong></td><td><code>#be7c7d</code></td><td style="background:#be7c7d;width:60px;"></td></tr>
    <tr><td><strong>diagnostics.DiagnosticWarn</strong></td><td><code>#aa8a69</code></td><td style="background:#aa8a69;width:60px;"></td></tr>
  </tbody>
</table>

</details>

## 📦 Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim) (recommended)

```lua
{
  "lpuljic/nox-modus.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("nox-modus")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "lpuljic/nox-modus.nvim",
  config = function()
    vim.cmd.colorscheme("nox-modus")
  end
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'lpuljic/nox-modus.nvim'
```

### Manual

```bash
git clone https://github.com/lpuljic/nox-modus.nvim ~/.local/share/nvim/site/pack/plugins/start/nox-modus.nvim
```

## ⚙️ Configuration

### Basic Usage

```lua
vim.cmd.colorscheme("nox-modus")
```

### Advanced Configuration

You can pass options to the theme setup function for more control:

```lua
require("nox-modus").setup({
  clear_semantic_highlights = false,
  palette_override = {
    bg = "#000000",
    red = "#ff0000"
  },
  plugins = {
    ["nvim-cmp"] = false,
    ["nvim-tree"] = true
  }
})
```

#### Configuration Options

| Option                      | Type      | Default | Description                                 |
| --------------------------- | --------- | ------- | ------------------------------------------- |
| `clear_semantic_highlights` | `boolean` | `true`  | Clear semantic highlights from LSP          |
| `palette_override`          | `table`   | `{}`    | Override specific colors in the palette     |
| `plugins`                   | `table`   | `{}`    | Enable/disable specific plugin integrations |

#### 🔧 Extended API

```lua
-- Reload theme with current configuration
require("nox-modus").reload()

-- Extend palette at runtime
require("nox-modus").extend_palette({ bg = "#000000" })

-- Get current palette for inspection
local palette = require("nox-modus").get_palette()

-- Get current configuration
local config = require("nox-modus").get_config()
```

#### 💬 Built-in Commands

| Command                | Description                                           |
| ---------------------- | ----------------------------------------------------- |
| `:NoxModusInfo`        | Show color palette information                        |
| `:NoxModusInfo config` | Show current configuration and usage examples         |
| `:NoxModusPalette`     | Show color palette (alias for `:NoxModusInfo`)        |
| `:NoxModusConfig`      | Show configuration (alias for `:NoxModusInfo config`) |

> **Tip**: Press `q` or `<Esc>` to close the info windows

## ✨ Features

- 🎨 **Sophisticated Color Palette** - Carefully crafted monotone design with strategic accent colors
- 🔧 **Modular Plugin Support** - Integrations for LSP, Treesitter, Telescope, nvim-cmp, and more
- ⚡ **Performance Optimized** - Batched highlight application and lazy plugin loading
- 🎛️ **Highly Customizable** - Runtime palette modification and plugin control
- 🖥️ **Terminal Support** - Full 16-color terminal integration for `:terminal`
- 🔍 **Built-in Inspection** - Commands to explore palette and configuration
- 🛡️ **Robust Error Handling** - Graceful fallbacks for missing plugins
- 📦 **Zero Dependencies** - Lightweight and self-contained

## 🔌 Plugin Integrations

nox-modus includes dedicated support for:

- **LSP**: nvim-lspconfig, diagnostics, semantic tokens
- **Syntax**: nvim-treesitter, markdown, YAML, vimdoc
- **Git**: gitsigns, vim-fugitive, diff highlighting
- **UI**: nvim-cmp, nvim-tree, telescope.nvim
- **Status**: lualine.nvim theme included
- **Linting**: none-ls (null-ls) support

### 🤖 Automatic Plugin Detection

The theme **automatically detects installed plugins** and only loads relevant integrations:

- **External plugins** (nvim-cmp, telescope, etc.) - loaded only if detected
- **Built-in features** (markdown, YAML, vimdoc) - always loaded
- **Core highlights** (base colors) - always loaded

```lua
-- Manual override examples:
require("nox-modus").setup({
  plugins = {
    ["nvim-treesitter"] = false,  -- Disable even if installed
    ["nvim-cmp"] = true,          -- Force enable even if not detected
  }
})
```

### 🛠️ Adding Custom Integrations

To add support for a new plugin:

1. **Create integration file**: `lua/nox-modus/integrations/my-plugin.lua`

   ```lua
   local M = {}

   function M.highlight(palette)
     return {
       MyPluginHighlight = { fg = palette.base, bg = palette.bg },
       -- Add more highlights...
     }
   end

   return M
   ```

2. **Register in theme.lua**: Add to the `available_integrations` table

   ```lua
   -- For external plugins (conditional loading):
   { name = "my-plugin", module = "nox-modus.integrations.my-plugin", plugin = "my-plugin" },

   -- For built-in features (always load):
   { name = "my-feature", module = "nox-modus.integrations.my-feature", always_load = true },
   ```

| Setting              | When It Loads           | Use For                             |
| -------------------- | ----------------------- | ----------------------------------- |
| `plugin = "name"`    | Only if plugin detected | External plugins users may not have |
| `always_load = true` | Always loads            | Built-in syntax, core features      |

## 🤝 Contributing

Contributions are welcome! Please feel free to submit issues and pull requests.

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.

---

<div align="center">

_Built with ❤️ for the Neovim community_

**[⭐ Star this repo](https://github.com/lpuljic/nox-modus.nvim) • [🐛 Report issues](https://github.com/lpuljic/nox-modus.nvim/issues) • [💡 Request features](https://github.com/lpuljic/nox-modus.nvim/issues/new)**

</div>
