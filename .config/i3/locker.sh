#!/usr/bin/env bash

exec xautolock -detectsleep -time 10 -locker "i3lock -t -i ~/.config/i3/lisp_lambda.png" -notify 30 -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 30 seconds'"
