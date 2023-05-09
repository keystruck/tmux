#-----------------------------------------------------------------------------
#  tmux-dvorak    Rev. 20230509.1
#  tmux motion bindings for Dvorak layout
#  Lives in ~/.config/tmux; sourced by tmux.conf
#-----------------------------------------------------------------------------

# prefix-g displays pane numbers (like prefix-q)
unbind g
bind g display-panes

# vim-style movements around panes, using dvorak layout
bind -r d select-pane -L
bind -r n select-pane -R
bind -r t select-pane -U
bind -r h select-pane -D

# pane resizing uses meta key
bind -r M-d resize-pane -L
bind -r M-n resize-pane -R
bind -r M-t resize-pane -U
bind -r M-h resize-pane -D

