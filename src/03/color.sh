#!/bin/bash

arr[0]=$one;
arr[1]=$two;
arr[2]=$three;
arr[3]=$four;

for i in 0 1 2 3; do
        if [[ ${arr[$i]} -lt 1 || ${arr[$i]} -gt 6 ]]
        then
                echo "Неправильный параметр"
                exit 1
        fi
done

if [[ ${arr[0]} == ${arr[1]} || ${arr[2]} == ${arr[3]} ]]
then
        echo "Цвет текста и фона не должен совпадать, перезапустите программу с нужными параметрами"
        exit 1
fi

FW="\033[107m"
FR="\033[41m"
FG="\033[42m"
FBlu="\033[44m"
FP="\033[45m"
FBla="\033[40m"

end="\e[0m"

TW="\033[97m"
TR="\033[31m"
TG="\033[32m"
TBlu="\033[34m"
TP="\033[35m"
TBla="\033[30m"

for i in 0 2; do
        if [[ ${arr[$i]} == 1 ]]
    then
                narr[$i]=$FW
        elif [[ ${arr[$i]} == 2 ]]
    then
                narr[$i]=$FR
        elif [[ ${arr[$i]} == 3 ]]
    then
                narr[$i]=$FG
        elif [[ ${arr[$i]} == 4 ]]
    then
                narr[$i]=$FBlu
        elif [[ ${arr[$i]} == 5 ]]
    then
                narr[$i]=$FP
        elif [[ ${arr[$i]} == 6 ]]
    then
                narr[$i]=$FBla
        fi
done


for i in 1 3; do
        if [[ ${arr[$i]} == 1 ]]
    then
            narr[$i]=$TW
        elif [[ ${arr[$i]} == 2 ]]
    then
    narr[$i]=$TR
        elif [[ ${arr[$i]} == 3 ]]
    then
            narr[$i]=$TG
        elif [[ ${arr[$i]} == 4 ]]
    then
            narr[$i]=$TBlu
        elif [[ ${arr[$i]} == 5 ]]
    then
            narr[$i]=$TP
        elif [[ ${arr[$i]} == 6 ]]
    then
            narr[$i]=$TBla
    fi
done

echo -e "${narr[0]}${narr[1]}HOSTNAME$end = ${narr[2]}${narr[3]}$HOSTNAME$end"
echo -e "${narr[0]}${narr[1]}TIMEZONE$end = ${narr[2]} ${narr[3]}$TIMEZONE$end"
echo -e "${narr[0]}${narr[1]}USER$end = ${narr[2]}${narr[3]}$USER$end"
echo -e "${narr[0]}${narr[1]}OS$end = ${narr[2]}${narr[3]}$OS$end"
echo -e "${narr[0]}${narr[1]}DATE$end = ${narr[2]}${narr[3]}$DATE$end"
echo -e "${narr[0]}${narr[1]}UPTIME$end = ${narr[2]}${narr[3]}$UPTIME$end"
echo -e "${narr[0]}${narr[1]}UPTIME_SEC$end = ${narr[2]}${narr[3]}$UPTIME_SEC$end"
echo -e "${narr[0]}${narr[1]}IP$end = ${narr[2]}${narr[3]}$IP$end"
echo -e "${narr[0]}${narr[1]}MASK$end = ${narr[2]}${narr[3]}$MASK$end"
echo -e "${narr[0]}${narr[1]}GATEWAY$end = ${narr[2]}${narr[3]}$GATEWAY$end"
echo -e "${narr[0]}${narr[1]}RAM_TOTAL$end = ${narr[2]}${narr[3]}$RAM_TOTAL$end"
echo -e "${narr[0]}${narr[1]}RAM_USED$end = ${narr[2]}${narr[3]}$RAM_USED$end"
echo -e "${narr[0]}${narr[1]}RAM_FREE$end = ${narr[2]}${narr[3]}$RAM_FREE$end"
echo -e "${narr[0]}${narr[1]}SPACE_ROOT$end = ${narr[2]}${narr[3]}$SPACE_ROOT$end"
echo -e "${narr[0]}${narr[1]}SPACE_ROOT_USED$end = ${narr[2]}${narr[3]}$SPACE_ROOT_USED$end"
echo -e "${narr[0]}${narr[1]}SPACE_ROOT_FREE$end = ${narr[2]}${narr[3]}$SPACE_ROOT_FREE$end"