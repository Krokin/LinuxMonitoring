#!/bin/bash

export start=$(date +%s%N)

if [[ $# != 1 ]]
then
        echo "Аргументы неверны!"
        exit 1
fi

checkFile="$(find $1)"
if [[ -z $checkFile ]]
then
        exit 1
fi

if [[ "${1: -1}" != "/" ]]
then
        echo "Путь неверный!"
        exit 1
fi

export numberOfFolders="$(sudo ls -l $1 | grep ^d | wc -l)"
export top5Folders="$(sudo du -h $1 | sort -rh | head -5 | awk '{print $2}')"
export top5FoldersSize="$(sudo du -h $1 | sort -rh | head -5 | awk '{print $1}')"
export numberOfAllFiles="$(sudo ls -laR $1 | grep "^-" | wc | awk '{print $1}')"
export numberOfConfFiles="$(sudo find $1 -type f -name "*.conf" | wc -l)"
export numberOfTxtFiles="$(sudo find $1 -type f -name "*.txt" | wc -l)"
export numberOfExeFiles="$(sudo find $1 -type f -name -executable | wc -l)"
export numberOfLogsFiles="$(sudo find $1 -type f -name "*.log" | wc -l)"
export numberOfRarFiles="$(sudo find $1 -type f -name "*.zip" -o -name "*.7z" -o -name "*.rar" -o -name "*.tar" | wc -l)"
export numberOfSLKFiles="$(sudo find $1 -type l | wc -l)"
export top10Files="$(sudo find $1 -type f -exec ls -sh {} \; | sort -nr | head -10 | awk '{print $2}')"
export top10FilesSize="$(sudo find $1 -type f -exec ls -sh {} \; | sort -nr | head -10 | awk '{print $1}')"
export top10FilesType="$(sudo find $1 -type f -exec ls -lS {} + | head -10 | awk -F '.' '{print $2}')"
export top10ExeFiles="$(sudo find $1 -type f -executable -exec ls -sh {} \; | sort -nr | head -10 | awk '{print $2}')"
export top10ExeFilesSize="$(sudo find $1 -type f -executable -exec ls -sh {} \; | sort -nr | head -10| awk '{print $1}')"
chmod +x jdoit.sh
./jdoit.sh