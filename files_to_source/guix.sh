# fichier à mettre dans /etc/profile.d
GUIX_PROFILE="$HOME/.config/guix/current" ; \
source $GUIX_PROFILE/etc/profile
export GUIX_LOCPATH=$HOME/.guix-profile/lib/locale
export PATH="/home/thierry/.guix-profile/bin${PATH:+:}$PATH"
