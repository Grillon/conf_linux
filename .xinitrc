#exec twm
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
setxkbmap fr
exec i3
