!/bin/bash

if [ $# != 0 ]
then
        echo "Лишние параметры"
else
        chmod +x output.sh
        ./output.sh
        chmod +x save_log.sh
        ./save_log.sh
fi
