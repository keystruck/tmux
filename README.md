# tmux

Personalized `tmux` configuration file with optional Dvorak-friendly keymappings and color theme file.


## Installation

Rename `$HOME/.config/tmux` if it exists and then clone the repo into `$HOME/.config`. `tmux` looks for this file in both `$HOME` and `$HOME/.config/tmux` so no symlink is needed.


## Files

### `tmux.conf`

Defines the following alternate key bindings for several common commands:
*   `Prefix` is rebound from `Ctrl-b` to `Ctrl-t` (`Ctrl-b` is released)
*   `Prefix-h|j|k|l` jump between panes using `vim`-like motions
*   `Prefix-Alt-h|j|k|l` resize panes using `vim`-like motions
*   `Prefix-r` reloads `tmux.conf` and displays a confirmation
*   `Prefix-/` (`Prefix-Slash`) creates a new vertical split to the right (same as default `Prefix-%`)
*   `Prefix--` (`Prefix-Hyphen`) creates a new horizontal split below (same as default `Prefix-"`)

`tmux.conf` also sources each of `dvorak.tmux` and `theme.tmux`, if present.


### `dvorak.tmux` \[optional]

Defines Dvorak-friendly keybindings that may overwrite or conflict with default bindings or bindings defined in `tmux.conf`, e.g.
*   `Prefix-g` displays pane numbers, allowing direct selection (same as default `Prefix-q`)
*   `Prefix-d|h|t|n` jump between panes
*   `Prefix-Alt-d|h|t|n` resize panes


### `theme.tmux` \[optional]

Implements an optional color theme, in this case Nightfox (Carbonfox style).


## Links

Nightfox/Carbonfox color theme - see <https://github.com/EdenEast/nightfox.nvim/tree/main/extra/carbonfox>