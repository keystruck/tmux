# tmux

Personalized `tmux` configuration file with optional Nightfox/Carbonfox color theme (see <https://github.com/EdenEast/nightfox.nvim>) and Dvorak-friendly keymappings.


## Installation

Rename `$HOME/.config/tmux` if it exists and then clone the repo into `$HOME/.config`.


## Files

### `tmux.conf`

`tmux`'s master configuration file. `tmux` looks for this file in both `$HOME` and `$HOME/.config/tmux` so the file does not need to be symlinked.

The principal function of `tmux.conf` is to define alternate Dvorak-friendly key bindings for several common commands. Except as expressly noted below, the default binding remains active in each case.
*   `Prefix` is rebound from `Ctrl-b` to `Ctrl-t` (`Ctrl-b` is released)
*   `Prefix-h|j|k|l` jump between panes using `vim`-like motions
*   `Prefix-Alt-h|j|k|l` resize panes using `vim`-like motions
*   `Prefix-r` reloads `tmux.conf` and displays a confirmation
*   `Prefix-/` (`Prefix-Slash`) creates a new vertical split to the right (same as default `Prefix-%`)
*   `Prefix--` (`Prefix-Hyphen`) creates a new horizontal split below (same as default `Prefix-"`)

`tmux.conf` also sources each of `dvorak.tmux` and `carbonfox.tmux`, if present.


### `dvorak.tmux` \[optional]

Sourced by `tmux.conf`, this file defines Dvorak-friendly keybindings that may overwrite or conflict with default bindings or bindings defined in `tmux.conf`, e.g.
*   `Prefix-g` displays pane numbers, allowing direct selection (same as default `Prefix-q`)
*   `Prefix-d|h|t|n` jump between panes
*   `Prefix-Alt-d|h|t|n` resize panes

To disable these bindings, delete or rename `dvorak.tmux` to keep it from being sourced.


### `theme.tmux` \[optional]

Sourced by `tmux.conf`, this file, if present, can implement a particular color theme, e.g. Nightfox (Carbonfox style - see <https://github.com/EdenEast/nightfox.nvim/tree/main/extra/carbonfox>).

To disable this theme, delete or rename `theme.tmux` to keep it from being sourced.
