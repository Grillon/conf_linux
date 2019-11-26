#!/usr/bin/env bash
export PATH=$PATH:$HOME/Outils/node-v12.13.1-linux-x64/bin
export log_file=$HOME/go.log
export firefox_path=/usr/bin/firefox
export wiki_url=http://localhost:8080
function log_wiki {
  message=$1
  date "+%y%m%d %H:%M:%S $message" >> $log_file
}
function check_wiki {
  log_wiki ${FUNCNAME[0]}
  curl http://localhost:8080
}
function start_wiki {
  log_wiki ${FUNCNAME[0]}
  (cd $HOME/Documents/blocNote/ && tiddlywiki monWiki --server&)
}
function show_wiki {
  log_wiki ${FUNCNAME[0]}
 sleep 1 && $firefox_path --new-tab $wiki_url
}
function kill_wiki {
  log_wiki ${FUNCNAME[0]}
  kill $(ps -ef | grep "monWiki --[s]erver" | awk '{print $2}')
}

if [ "$1" == "stop" ];then
  kill_wiki
  exit 0
fi
check_wiki
if [ $? -gt 0 ];then
  start_wiki 2>&1 >>$HOME/go.log && sleep 1 && show_wiki >>$HOME/go.log 2>&1
  exit 0
else
  show_wiki
  exit 0
fi
exit 1
