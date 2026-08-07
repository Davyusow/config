alias ls="eza --icons=auto"

export PATH="$HOME/.local/bin:$PATH"
# Android
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

fish_add_path /home/davyusow/.spicetify
# Wayland
export QT_QPA_PLATFORM=wayland
export GDK_BACKEND=wayland
export LANG=pt_BR.UTF-8
export LC_ALL=pt_BR.UTF-8

fish_add_path

function fish_title
    echo (whoami)"@"(hostname -s)
end
