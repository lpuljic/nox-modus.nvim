<div align="center">

#![logo]()
logo here

</div>

---

<div align="center"><p>
    <a href="https://github.com/lpuljic/nox-modus.nvim/pulse">
      <img alt="Last commit" src="https://img.shields.io/github/last-commit/lpuljic/nox-modus.nvim?style=for-the-badge&logo=starship&color=98c379&logoColor=D9E0EE&labelColor=302D41"/>
    </a>
    <a href="https://github.com/lpuljic/nox-modus.nvim/stargazers">
      <img alt="Stars" src="https://img.shields.io/github/stars/lpuljic/nox-modus.nvim?style=for-the-badge&logo=starship&color=c678dd&logoColor=D9E0EE&labelColor=302D41" />
    </a>
</div>

![Preview](./image/nox-modus.png)

# nox-modus

nox-modus is inspired monotone theme, hence the name `nox` `modus`, meaning `night mode` in Latin.

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
    <tr><td><strong>olivine</strong></td><td><code>#97BC62</code></td><td style="background:#97BC62;width:60px;"></td></tr>
    <tr><td><strong>aluminium</strong></td><td><code>#AbAbAf</code></td><td style="background:#AbAbAf;width:60px;"></td></tr>
    <tr><td><strong>gun_powder</strong></td><td><code>#415062</code></td><td style="background:#415062;width:60px;"></td></tr>
    <tr><td><strong>grey_chateau</strong></td><td><code>#96a6c8</code></td><td style="background:#96a6c8;width:60px;"></td></tr>
    <tr><td><strong>zeus</strong></td><td><code>#232323</code></td><td style="background:#232323;width:60px;"></td></tr>
    <tr><td><strong>celestial_blue</strong></td><td><code>#569CD6</code></td><td style="background:#569CD6;width:60px;"></td></tr>
    <tr><td><strong>purple</strong></td><td><code>#B180D7</code></td><td style="background:#B180D7;width:60px;"></td></tr>
    <tr><td><strong>red</strong></td><td><code>#da3633</code></td><td style="background:#da3633;width:60px;"></td></tr>
    <tr><td><strong>mocha</strong></td><td><code>#A47663</code></td><td style="background:#A47663;width:60px;"></td></tr>
    <tr><td><strong>orange</strong></td><td><code>#F3701E</code></td><td style="background:#F3701E;width:60px;"></td></tr>
    <tr><td><strong>sunglow</strong></td><td><code>#FAC03B</code></td><td style="background:#FAC03B;width:60px;"></td></tr>
    <tr><td><strong>golden_glow</strong></td><td><code>#FCE094</code></td><td style="background:#FCE094;width:60px;"></td></tr>
    <tr><td><strong>git.DiffAdd</strong></td><td><code>#294841</code></td><td style="background:#294841;width:60px;"></td></tr>
    <tr><td><strong>git.DiffDelete</strong></td><td><code>#6A2835</code></td><td style="background:#6A2835;width:60px;"></td></tr>
    <tr><td><strong>git.DiffChange</strong></td><td><code>#49423C</code></td><td style="background:#49423C;width:60px;"></td></tr>
    <tr><td><strong>git.DiffText</strong></td><td><code>#C5630C</code></td><td style="background:#C5630C;width:60px;"></td></tr>
    <tr><td><strong>diagnostics.DiagnosticError</strong></td><td><code>#be7c7d</code></td><td style="background:#be7c7d;width:60px;"></td></tr>
    <tr><td><strong>diagnostics.DiagnosticWarn</strong></td><td><code>#aa8a69</code></td><td style="background:#aa8a69;width:60px;"></td></tr>
  </tbody>
</table>

</details>

## Install

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use "lpuljic/nox-modus.nvim"
```

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'lpuljic/nox-modus.nvim'
```

[lazy](https://github.com/folke/lazy.nvim)

```lua
{ "lpuljic/nox-modus.nvim" }
```

## Configuration

Add this somewhere in your configuration.

```lua
vim.cmd.colorscheme("nox-modus")
```

### Advanced: Options

You can pass options to the theme setup function for more control. For example, to disable clearing of semantic highlights:

```lua
require("nox-modus").setup({
  clear_semantic_highlights = false,
})
```

#### Available Options
- `clear_semantic_highlights` (default: `true`): If set to `false`, semantic highlights from LSP will not be cleared by the theme.

---

## Features
- Modular plugin integrations (LSP, Treesitter, Telescope, etc.)
- Palette-based color management
- Robust error handling for integrations
- Performance optimizations (avoids unnecessary highlight clearing)

---

For more details, see the source code and comments in the `lua/nox-modus/` directory.
