# conf_linux

Ce projet a pour but d'unifier mes configurations linux.  
Pour cela j'ai choisie Guix, un gestionnaire de package deterministe.  
J'ai un autre projet avec des objectifs comparables en standby actuellement : git@github.com:Grillon/systeme-portable.git

## Supported distro

En théorie toute les distributions supportant guix

## What do you need :

* guix

## What you will get :

* guix-installer
* i3wm
* urxvt
* pip
* tmux
* tpm : https://github.com/tmux-plugins/tpm
* neovim
* VimPlug

## ressources

https://unix.stackexchange.com/questions/196488/set-urxvt-to-work-with-256-colors

https://wiki.archlinux.org/index.php/X_resources

## installation manuelle minimal 

```
guix install git python-py3status lm-sensors vim
# cloner ce repo
mkdir Outils #s'il n'existe pas deja
cd Outils
git clone -b maison https://github.com/Grillon/conf_linux.git 
# cloner tpm et doom
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
guix install copyq tmux emacs
~/.emacs.d/bin/doom install
```

## Not finished yet

## Licence

GPLv3
