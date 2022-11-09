#!/bin/bash
read -a nastavniki <<< 'Денис Валера Виталя Ильгизар'
hours=48
month=11
day=06
day_start=$(date -d $(date +'%Y')-${month}-${day} +%s)
day_today=$(date -d $(date +'%Y-%m-%d') +%s)
nastavnik_num=${#nastavniki[@]}
delta=$(($day_today - $day_start))
delta_days=$(($delta/24/3600))
shift_days=$(($hours/24))
main_count=$(($delta_days / $shift_days))
nastavnik_index=$(( $main_count % $nastavnik_num ))
