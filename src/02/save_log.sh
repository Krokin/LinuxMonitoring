#!/bin/bash

read -p "Хотите сохранить данные в файл?[y/n] " ans
if [[ $ans == Y || $ans == y ]]
then
        file="$(date +"%d_%m_%y_%H_%M_%S").status"
        ./output.sh > $file
fi
