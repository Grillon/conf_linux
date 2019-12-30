if [ -d $HOME/files_to_source ]; then
  for i in $HOME/files_to_source/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
. ~/.bashrc
