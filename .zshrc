# продвинутое автодополнение
autoload -U compinit
compinit

# подсветка выбора вариантов автодополнения
zmodload zsh/complist
zstyle ':completion:*' menu yes select

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# man zshmisc

# автокоррекция команд и путей если набрали с ошибкой
setopt CORRECT_ALL
SPROMPT="Ошибка! Вы хотели ввести %r вместо %R? (y/n/e/a) "

# Теперь, если нажать Ctr+X Ctrl+Z, при вводе команды будет автоматически производится поиск в истории по первым буквам команды. Нажатие Ctrl+Z отключит этот режим
autoload -U predict-on
zle -N predict-on
zle -N predict-off
bindkey "^X^Z" predict-on # C-x C-z
bindkey "^Z" predict-off # C-z

# Автодополнение имени хостов SSH
# пробелы между "% %" убрать.
hosts=(${${${(f)"$(<$HOME/.ssh/known_hosts)"}% %\ *}% %,*})
zstyle ':completion:*:hosts' hosts $hosts

# dir in title of window
chpwd() {
  [[ -o interactive ]] || return
  case $TERM in
    sun-cmd) print -Pn "\e]l%~\e\\"
      ;;
    *xterm*|rxvt|(dt|k|E)term) print -Pn "\e]2;%~\a"
      ;;
  esac
}
