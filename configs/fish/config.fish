# Configurações do oh-my-fish -> Transitei para o fisher mas caso eu retorne as configs são estas
# set -g theme_powerline_fonts yes
# set -g theme_nerd_fonts yes
# set -g theme_display_user ssh
# set -g theme_display_screen no
#
# set -g theme_display_date no
# set -g theme_display_sudo_user yes
# set -g theme_color_scheme gruvbox
# set -g theme_newline_cursor yes

if status is-interactive
    # Outros comandos para sessões interativas
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/davyusow/.ghcup/bin
set -g fish_greeting ""

alias ls="exa --icons"

fish_add_path /home/davyusow/.spicetify
pyenv init - fish | source
