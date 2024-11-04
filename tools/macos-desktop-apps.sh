CURDIR=$(cd `dirname $0` && pwd)

# Mac OS Applications:
declare -a apps=(
            "ankiapp-anki"
            "clipy"
            "firefox"
            "flux" # https://justgetflux.com/
            "keepassxc"
            "meetingbar" # https://github.com/leits/MeetingBar
            "obsidian"
            "paulxstretch"
            "reaper"
            "sysex-librarian"
            "telegram"
            "transmission"
            "vlc"
            "vscodium"
            "xmind-zen"
            "yandex-disk"
            "zoomus"
            )

for app in "${apps[@]}"
do
    brew install --cask "$app"
done


$CURDIR/../features/alacritty/setup.sh
$CURDIR/../features/amethyst/setup.sh
$CURDIR/../features/numi/setup.sh
$CURDIR/../features/vscode/setup.sh

# TODO: not in brew cask:
# Little-fingers https://github.com/shauninman/Little-Fingers
# Quick-plan
