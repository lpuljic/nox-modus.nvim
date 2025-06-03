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
      <th>Color</th>
      <th>Hex</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>bg</td><td style="background:#111111;width:60px;"></td><td>#111111</td></tr>
    <tr><td>base</td><td style="background:#e4e4e4;width:60px;"></td><td>#e4e4e4</td></tr>
    <tr><td>dark</td><td style="background:#151515;width:60px;"></td><td>#151515</td></tr>
    <tr><td>dawn</td><td style="background:#a0a0a0;width:60px;"></td><td>#a0a0a0</td></tr>
    <tr><td>ash_grey</td><td style="background:#b6b6b5;width:60px;"></td><td>#b6b6b5</td></tr>
    <tr><td>gravel</td><td style="background:#494949;width:60px;"></td><td>#494949</td></tr>
    <tr><td>warm_grey</td><td style="background:#8c8c8c;width:60px;"></td><td>#666666</td></tr>
    <tr><td>cascade</td><td style="background:#88afa2;width:60px;"></td><td>#88afa2</td></tr>
    <tr><td>monsoon</td><td style="background:#719597;width:60px;"></td><td>#719597</td></tr>
    <tr><td>olivine</td><td style="background:#97BC62;width:60px;"></td><td>#97BC62</td></tr>
    <tr><td>aluminium</td><td style="background:#AbAbAf;width:60px;"></td><td>#AbAbAf</td></tr>
    <tr><td>gun_powder</td><td style="background:#415062;width:60px;"></td><td>#415062</td></tr>
    <tr><td>grey_chateau</td><td style="background:#96a6c8;width:60px;"></td><td>#96a6c8</td></tr>
    <tr><td>zeus</td><td style="background:#232323;width:60px;"></td><td>#232323</td></tr>
    <tr><td>celestial_blue</td><td style="background:#569CD6;width:60px;"></td><td>#569CD6</td></tr>
    <tr><td>purple</td><td style="background:#B180D7;width:60px;"></td><td>#B180D7</td></tr>
    <tr><td>red</td><td style="background:#da3633;width:60px;"></td><td>#da3633</td></tr>
    <tr><td>mocha</td><td style="background:#A47663;width:60px;"></td><td>#A47663</td></tr>
    <tr><td>orange</td><td style="background:#F3701E;width:60px;"></td><td>#F3701E</td></tr>
    <tr><td>sunglow</td><td style="background:#FAC03B;width:60px;"></td><td>#FAC03B</td></tr>
    <tr><td>golden_glow</td><td style="background:#FCE094;width:60px;"></td><td>#FCE094</td></tr>
    <tr><td>git.DiffAdd</td><td style="background:#294841;width:60px;"></td><td>#294841</td></tr>
    <tr><td>git.DiffDelete</td><td style="background:#6A2835;width:60px;"></td><td>#6A2835</td></tr>
    <tr><td>git.DiffChange</td><td style="background:#49423C;width:60px;"></td><td>#49423C</td></tr>
    <tr><td>git.DiffText</td><td style="background:#C5630C;width:60px;"></td><td>#C5630C</td></tr>
    <tr><td>diagnostics.DiagnosticError</td><td style="background:#be7c7d;width:60px;"></td><td>#be7c7d</td></tr>
    <tr><td>diagnostics.DiagnosticWarn</td><td style="background:#aa8a69;width:60px;"></td><td>#aa8a69</td></tr>
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
