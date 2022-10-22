#!/bin/bash

arr[0]=$one;
arr[1]=$two;
arr[2]=$three;
arr[3]=$four;

if [[ -z "${arr[0]}" ]]
then
    check[0]=1;
    if [[ ${arr[1]} == 1 ]]
    then
        arr[0]=2;
    else
        arr[0]=1;
    fi
fi

if [[ -z "${arr[1]}" ]]
then
    check[1]=1;
    if [[ ${arr[0]} == 2 ]]
    then
        arr[1]=1;
    else
        arr[1]=2;
    fi
fi

if [[ -z "${arr[2]}" ]]
then
    check[2]=1;
    if [[ ${arr[3]} == 3 ]]
    then
        arr[2]=4;
    else
        arr[2]=3;
    fi
fi

if [[ -z "${arr[3]}" ]]
then
    check[3]=1;
    if [[ ${arr[2]} == 4 ]]
    then
        arr[3]=3;
    else
        arr[3]=4;
    fi
fi

for i in 0 1 2 3; do
        if [[ ${arr[$i]} -lt 1 || ${arr[$i]} -gt 6 ]]
    then
                echo "Неправильный параметр"
                exit 1
        fi
done

if [[ ${arr[0]} == ${arr[1]} || ${arr[2]} == ${arr[3]} ]]
then
        echo "Цвет текста и фона не должен совпадать, перезапустите программу с нужными параметр>
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
        color[$i]="(white)"
        elif [[ ${arr[$i]} == 2 ]]
    then
                narr[$i]=$FR
        color[$i]="(red)"
        elif [[ ${arr[$i]} == 3 ]]
    then
                narr[$i]=$FG
        color[$i]="(green)"
        elif [[ ${arr[$i]} == 4 ]]
    then
                narr[$i]=$FBlu
        color[$i]="(blue)"
        elif [[ ${arr[$i]} == 5 ]]
    then
                narr[$i]=$FP
        color[$i]="(purple)"
        elif [[ ${arr[$i]} == 6 ]]
    then
                narr[$i]=$FBla
        color[$i]="(black)"
        fi
done

for i in 1 3; do
        if [[ ${arr[$i]} == 1 ]]
    then
        narr[$i]=$TW
        color[$i]="(white)"
    elif [[ ${arr[$i]} == 2 ]]
    then
        narr[$i]=$TR
        color[$i]="(red)"
    elif [[ ${arr[$i]} == 3 ]]
    then
        narr[$i]=$TG
        color[$i]="(green)"
    elif [[ ${arr[$i]} == 4 ]]
    then
        narr[$i]=$TBlu
        color[$i]="(blue)"
    elif [[ ${arr[$i]} == 5 ]]
    then
        narr[$i]=$TP
        color[$i]="(purple)"
    elif [[ ${arr[$i]} == 6 ]]
    then
        narr[$i]=$TBla
        color[$i]="(black)"
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
echo -e "${narr[0]}${narr[1]}SPACE_ROOT_FREE$end = ${narr[2]}${narr[3]}$SPACE_ROOT_FREE$end\n"

if [[ ${check[0]} -eq 1 ]]
then
    if [[ ${arr[0]} -eq 1 ]]
    then
        echo "Column 1 background = default (white)"
    else
        echo "Column 1 background = default (red)"
    fi
else
    echo "Column 1 background = ${arr[0]} ${color[0]}"
fi

if [[ ${check[1]} -eq 1 ]]
then
    if [[ ${arr[1]} -eq 1 ]]
    then
        echo "Column 1 font color = default (white)"
    else
        echo "Column 1 font color = default (red)"
    fi
else
    echo "Column 1 font color = ${arr[1]} ${color[1]}"
fi

if [[ ${check[2]} -eq 1 ]]
then
    if [[ ${arr[2]} -eq 3 ]]
    then
        echo "Column 2 background = default (green)"
    else
        echo "Column 2 background = default (blue)"
    fi
else
    echo "Column 2 background = ${arr[2]} ${color[2]}"
fi

if [[ ${check[3]} -eq 1 ]]
then
    if [[ ${arr[3]} -eq 3 ]]
    then
        echo "Column 2 font color = default (green)"
    else
        echo "Column 2 font color = default (blue)"
    fi
else
    echo "Column 2 font color = ${arr[3]} ${color[3]}"
fi