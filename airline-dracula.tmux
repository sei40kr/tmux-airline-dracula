#!/usr/bin/env bash

main() {
  black='colour232'
  white='colour255'
  gray='colour240'
  dark_gray='colour236'
  light_purple='colour140'
  # purple='colour99'
  dark_purple='colour63'
  tmux set-option -g status 'on'
  tmux set-option -g status-left-length '100'
  tmux set-option -g status-right-length '100'
  tmux set-option -g status-bg "${dark_gray}"
  tmux set-option -g pane-active-border-fg "${dark_purple}"
  tmux set-option -g pane-border-fg "${gray}"
  tmux set-option -g message-bg "${gray}"
  tmux set-option -g message-fg "${white}"
  tmux set-option -g message-command-bg "${gray}"
  tmux set-option -g message-command-fg "${white}"
  tmux set-option -g status-left "#[fg=${white},bg=${dark_gray},bold] #S "
  tmux set-option -g status-right \
    "#[fg=${light_purple},bg=${dark_gray}]#[fg=${black},bg=${light_purple}] %Y-%m-%d %H:%M "
  tmux set-window-option -g window-status-separator ''
  tmux set-window-option -g window-status-format "#[fg=${white},bg=${dark_gray}] #I #W "
  tmux set-window-option -g window-status-current-format \
    "#[fg=${dark_gray},bg=${dark_purple}]#[fg=${white}] #I #W #[fg=${dark_purple},bg=${dark_gray}]"
  tmux set-window-option -g window-status-fg "${white}"
  tmux set-window-option -g window-status-bg "${dark_gray}"
  tmux set-window-option -g window-status-activity-fg "${white}"
  tmux set-window-option -g window-status-activity-bg "${dark_gray}"
}

main

# vim: set filetype=bash
