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

<summary><h2>🎨 Palette</h2></summary>

| name        |                           hex                            | name         |                           hex                            |
| :---------- | :------------------------------------------------------: | :----------- | :------------------------------------------------------: |
| fg          | ![#ffffff](https://placehold.co/15x15/ffffff/ffffff.png) | red          | ![#da3633](https://placehold.co/15x15/da3633/da3633.png) |
| bg          | ![#111111](https://placehold.co/15x15/111111/111111.png) | orange       | ![#e67300](https://placehold.co/15x15/e67300/e67300.png) |
| gray01      | ![#494949](https://placehold.co/15x15/494949/494949.png) | yellow       | ![#fac03b](https://placehold.co/15x15/fac03b/fac03b.png) |
| gray02      | ![#666666](https://placehold.co/15x15/666666/666666.png) | grayish_blue | ![#96a6c8](https://placehold.co/15x15/96a6c8/96a6c8.png) |
| gray03      | ![#b6b6b5](https://placehold.co/15x15/b6b6b5/b6b6b5.png) | light_blue   | ![#88afa2](https://placehold.co/15x15/88afa2/88afa2.png) |
| gray04      | ![#7c8c95](https://placehold.co/15x15/7c8c95/7c8c95.png) | md_blue      | ![#569cd6](https://placehold.co/15x15/569cd6/569cd6.png) |
| gray05      | ![#8c8c8c](https://placehold.co/15x15/8c8c8c/8c8c8c.png) | md_orange    | ![#a47663](https://placehold.co/15x15/a47663/a47663.png) |
| gray06      | ![#a0a0a0](https://placehold.co/15x15/a0a0a0/a0a0a0.png) | cursor_fg    | ![#415062](https://placehold.co/15x15/415062/415062.png) |
| green       | ![#97bc62](https://placehold.co/15x15/97bc62/97bc62.png) | cursor_bg    | ![#ababaf](https://placehold.co/15x15/ababaf/ababaf.png) |
| blue        | ![#719597](https://placehold.co/15x15/719597/719597.png) | DiffAdd      | ![#294842](https://placehold.co/15x15/294842/294842.png) |
| purple      | ![#b180d7](https://placehold.co/15x15/b180d7/b180d7.png) | DiffDelete   | ![#6a2835](https://placehold.co/15x15/6a2835/6a2835.png) |
| DiffChange  | ![#49423c](https://placehold.co/15x15/49423c/49423c.png) | DiffText     | ![#9a6f43](https://placehold.co/15x15/9a6f43/9a6f43.png) |

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


