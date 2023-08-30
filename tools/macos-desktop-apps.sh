# Ensure brew is installes
source ../features/brew/setup.sh

# Mac OS Applications:
declare -a app=("alacritty" # https://alacritty.org
            "ankiapp-anki"
            "clipy"
            "erctangle"
            "firefox"
            "font-fira-code"
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

# Setup config files for Alacritty:
source ../features/alacritty/setup.sh

# TODO: not in brew cask:
# Little-fingers
# Quick-plan
# Telegram
