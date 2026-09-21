# redsugi extras

Port of the redsugi palette to a handful of popular tools. Drop any of
these in wherever the tool expects its config.

> The upstream VSCode theme uses **the same ANSI and UI palette** in both
> `redsugi Dark` and `redsugi Dark Flared` — the variants only differ
> in editor token colors. So there is a single theme file per tool;
> pair it with whichever Neovim variant you run.

## Index

| Tool              | File                                                     |
| ----------------- | -------------------------------------------------------- |
| kitty             | [`kitty/redsugi.conf`](./kitty/redsugi.conf)           |
| Alacritty         | [`alacritty/redsugi.toml`](./alacritty/redsugi.toml)   |
| Ghostty           | [`ghostty/redsugi`](./ghostty/redsugi)                 |
| WezTerm           | [`wezterm/redsugi.lua`](./wezterm/redsugi.lua)         |
| iTerm2            | [`iterm2/redsugi.itermcolors`](./iterm2/redsugi.itermcolors) |
| Windows Terminal  | [`windows-terminal/redsugi.json`](./windows-terminal/redsugi.json) |
| foot              | [`foot/redsugi.ini`](./foot/redsugi.ini)               |
| tmux              | [`tmux/redsugi.tmux`](./tmux/redsugi.tmux)             |
| fish shell        | [`fish/redsugi.fish`](./fish/redsugi.fish)             |
| Slack (sidebar)   | [`slack/redsugi.md`](./slack/redsugi.md)               |

## Quick usage

### kitty
```conf
# ~/.config/kitty/kitty.conf
include /path/to/redsugi-nvim/extras/kitty/redsugi.conf
```

### Alacritty
```toml
# ~/.config/alacritty/alacritty.toml
[general]
import = ["/path/to/redsugi-nvim/extras/alacritty/redsugi.toml"]
```

### Ghostty
Copy `ghostty/redsugi` to `~/.config/ghostty/themes/redsugi`, then:
```
# ~/.config/ghostty/config
theme = redsugi
```

### WezTerm
```lua
-- ~/.wezterm.lua
local redsugi = dofile("/path/to/redsugi-nvim/extras/wezterm/redsugi.lua")
return { colors = redsugi }
```

### iTerm2
iTerm2 → Settings → Profiles → Colors → **Color Presets…** → Import…
→ select `iterm2/redsugi.itermcolors`, then pick **redsugi**.

### Windows Terminal
Open Settings JSON and append the contents of `windows-terminal/redsugi.json`
as an entry in the top-level `"schemes"` array. Then set
`"colorScheme": "redsugi"` on the profiles you want.

### foot
```ini
# ~/.config/foot/foot.ini
include=/path/to/redsugi-nvim/extras/foot/redsugi.ini
```

### tmux
```tmux
# ~/.tmux.conf
source-file /path/to/redsugi-nvim/extras/tmux/redsugi.tmux
```

### fish
```fish
source /path/to/redsugi-nvim/extras/fish/redsugi.fish
# or drop the file into ~/.config/fish/conf.d/
```

### Slack
See [`slack/redsugi.md`](./slack/redsugi.md) — paste the comma-separated
color string into Preferences → Themes → custom theme.

## Core palette

For anyone porting redsugi to a new tool:

| Role             | Hex       |
| ---------------- | --------- |
| Background       | `#131314` (sidebar/terminal) · `#161618` (editor) |
| Foreground       | `#dddddd` (UI) · `#cacac2` (terminal) |
| Cursor           | `#d4a943` |
| Cursor text      | `#0e0e0e` |
| Selection bg     | `#47464c` (50% blend of `#91918780` on bg) |
| Gold accent      | `#b8943a` · `#dbad49` (bright) |

ANSI:

| #   | Color     | #    | Color (bright) |
| --- | --------- | ---- | -------------- |
| 0   | `#131314` | 8    | `#444444`      |
| 1   | `#b38f8f` | 9    | `#d9a6a6`      |
| 2   | `#a3be8c` | 10   | `#c3de9c`      |
| 3   | `#ebcb8b` | 11   | `#fbe4a8`      |
| 4   | `#6c7a8a` | 12   | `#8fa3b3`      |
| 5   | `#b3a3d3` | 13   | `#d3a3d3`      |
| 6   | `#6ac6f2` | 14   | `#8ac6f2`      |
| 7   | `#dddddd` | 15   | `#ffffff`      |
