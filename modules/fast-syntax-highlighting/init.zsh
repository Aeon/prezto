#
# Integrates fast-syntax-highlighting into Prezto.
#
# Authors:
#   Anton Stroganov <stroganov.a@gmail.com>
#

# Return if requirements are not found.
if ! zstyle -t ':prezto:module:syntax-highlighting' color; then
  return 1
fi

# Source module files.
source "${0:h}/external/fast-syntax-highlighting.plugin.zsh" || return 1
