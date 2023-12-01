# Ensure brew is installes
$HOME/.dotfiles/features/brew/setup.sh

# Mac OS Applications:
declare -a app=(
            "ankiapp-anki"
            "clipy"
            "erctangle"
            "firefox"
            "marta"
            "meetingbar" # https://github.com/leits/MeetingBar
            "notion"
            "raycast"
            "reaper"
            "telegram"
            "vlc"
            "xmind-zen"
            "yandex-disk"
            "zoomus"
            )

for app in "${apps[@]}"
do
    brew install --cask "$app"
done


# $HOME/.dotfiles/features/alacritty/setup.sh

# TODO: not in brew cask:
# Little-fingers https://github.com/shauninman/Little-Fingers
# Quick-plan
