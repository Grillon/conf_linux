TERMINAL=urxvt
EDITOR=vim

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ];then
   export PATH="$HOME/bin:$PATH"
fi

# on export toute les var d'env
export EDITOR TERMINAL
