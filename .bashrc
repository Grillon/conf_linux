#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
set -o vi
PATH=$PATH:/media/devel/firefox
PATH="$PATH:`ruby -e 'print Gem.user_dir'`/bin:/media/devel/ide/android-studio/bin"

export PATH="$PATH:$HOME/bin:$HOME/.rvm/bin" # Add RVM to PATH for scripting

PATH="/home/thierry/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/thierry/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/thierry/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/thierry/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/thierry/perl5"; export PERL_MM_OPT;
