#!/usr/bin/env bash
export PATH=$PATH:/home/thierry/Outils/node-v8.12.0-linux-x64/bin
export log_file=/home/thierry/go.log
export firefox_path=/home/thierry/bin/firefox
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
  (cd /home/thierry/Documents/blocNote/ && tiddlywiki monWiki --server&)
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
offline_wiki
if [ $? -gt 0 ];then
  start_wiki 2>&1 >>/home/thierry/go.log && show_wiki >>/home/thierry/go.log 2>&1
  exit 0
else
  show_wiki
  exit 0
fi
exit 1