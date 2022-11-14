#!/bin/bash

    if [[ $1 = "-h" || $1 = "--help" ]]; then
        printf "%s\n" "info:  Узнай, кто из наставников сегодня дежурит.
       Если расписание поменялось, скрипт может адаптироваться
       и перезаписать свой исполняемый файл."
        printf "\n"
        printf "%s\n" "usage: ${0##*/}"
        exit 1
    fi

function main(){
    cmd="$(grep '^function' "$0" |grep -v "function main" \
    |awk '{print $2}' \
    |cut -d\( -f1|fzf --prompt "Посмотреть/Изменить расписание наставников: ")"
    $cmd
    exit 0
}

function who_is_nastavnik(){
    clear
    cd ~/Scripts
    . change_nastavniki.sh
    echo "==========================="
    LC_ALL=ru_RU.utf8 date +"Сегодня: %d %B, %Y"
    echo "==========================="
    echo "Дежурит наставник ${nastavniki[$nastavnik_index]}"
    cd ~/
}

function change_nastavniki(){
    clear
    cp change_nastavniki.sh change_nastavniki.backup
    echo "Изменить настройки программы who_is_nastavnik"
    echo "#!/bin/bash" > change_nastavniki.sh
    read -p "Введите имена наставников через пробел: " -a nastavniki
    echo "read -a nastavniki <<< '${nastavniki[@]}'" >> change_nastavniki.sh
    read -p "Сколько часов длится смена наставника? " -a hours
    echo "hours=$hours" >> change_nastavniki.sh
    
    read -p "Введите месяц (1-12) начала первого дежурства: " -a month
    echo "month=${month}" >> change_nastavniki.sh 
    read -p "Введите день (01-31) начала первого дежурства: " -a day
    echo "day=${day}" >> change_nastavniki.sh

    echo "day_start=\$(date -d \$(date +'%Y')-\${month}-\${day} +%s)" >> change_nastavniki.sh
    echo "day_today=\$(date -d \$(date +'%Y-%m-%d') +%s)" >> change_nastavniki.sh 

    echo "nastavnik_num=\${#nastavniki[@]}" >> change_nastavniki.sh
    echo "delta=\$((\$day_today - \$day_start))" >> change_nastavniki.sh
    echo "delta_days=\$((\$delta/24/3600))" >> change_nastavniki.sh
    echo "shift_days=\$((\$hours/24))" >> change_nastavniki.sh
    echo "main_count=\$((\$delta_days / \$shift_days))" >> change_nastavniki.sh
    echo "nastavnik_index=\$(( \$main_count % \$nastavnik_num ))" >> change_nastavniki.sh
}

function about(){
    if [[ $# -lt 1 || $1 = "-h" || $1 = "--help" ]]; then
        printf "%s\n" "info: Узнай, кто из наставников сегодня дежурит.
        Если расписание поменялось, скрипт может адаптироваться
        и перезаписать исполняемый файл."
        printf "\n"
        printf "%s\n" "usage: ${0##*/}"
        exit 1
    fi
}

function gui_nastavnik(){
    clear
    cd ~/Scripts
    . change_nastavniki.sh
    yad --form \
    --center \
    --window-icon="/home/sam/Scripts/img/icon.png" \
    --title="Who is nastavnik - ${nastavniki[$nastavnik_index]}" --columns=3 --no-buttons --image-on-top \
    --image=/home/sam/Scripts/img/${nastavniki[$nastavnik_index]}.jpg \
    --field=" Sprint-9!sprint9":fbtn "gnome-terminal -- ranger $HOME/Dev/api_final_yatube" \
    --field=" Telegram!telegram":fbtn "telegram-desktop" \
    --field=" Calendar!calendar":fbtn "yad --calendar --no-buttons --width=400 --center --undecorated --close-on-unfocus" \
    --field=" Webinars!vebinars":fbtn "" \
    --field=" Явки!vebinars":fbtn "gnome-terminal -- vim $HOME/Scripts/nastavnik_main.sh" \
    --field=" Пароли!vebinars":fbtn "" \
    --text-info --back=#242424 --fore=#999999
    cd ~/
}

main
