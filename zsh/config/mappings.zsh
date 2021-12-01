bindkey -M viins '^K' up-history
bindkey -M viins '^J' down-history
bindkey -M viins '^F' vi-forward-char
bindkey -M viins '^U' backward-kill-line
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^[[3~' delete-char
bindkey -M viins '^R' user-fuzzy-history
bindkey -M viins '^P' user-fuzzy-select

bindkey -M vicmd 'j' down-line # Override `down-line-or-history`.
bindkey -M vicmd 'k' up-line # Override `up-line-or-history`.
