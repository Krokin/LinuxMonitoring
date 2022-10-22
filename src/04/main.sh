#!/bin/bash

if [ $# != 0 ]
then
        echo "Ошибка параметров"
else
        source config.txt
        export one=$column1_background
        export two=$column1_font_color
        export three=$column2_background
        export four=$column2_font_color
        chmod +x output.sh
        ./output.sh
fi