#
# Integrates zsh-histdb into Prezto.
#
# Authors:
#   Anton Stroganov <stroganov.a@gmail.com>
#

# Source module files.

autoload -Uz add-zsh-hook

source "${0:h}/external/sqlite-history.zsh" || return 1

add-zsh-hook precmd histdb-update-outcome

source "${0:h}/external/histdb-interactive.zsh" || return 1
bindkey '^r' _histdb-isearch
