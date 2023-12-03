CURDIR=$(cd `dirname $0` && pwd)

# Ensure brew is installes
$CURDIR/../features/brew/setup.sh

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


$CURDIR/../features/alacritty/setup.sh
$CURDIR/../features/numi/setup.sh
$CURDIR/../features/vscode/setup.sh

# TODO: not in brew cask:
# Little-fingers https://github.com/shauninman/Little-Fingers
# Quick-plan
