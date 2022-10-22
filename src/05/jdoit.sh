#!/bin/bash

top5fol=($top5Folders)
top5fols=($top5FoldersSize)

topfil=($top10Files)
topfils=($top10FilesSize)
topfilt=($top10FilesType)

topexe=($top10ExeFiles)
topexes=($top10ExeFilesSize)

echo "Total number of folders (including all nested ones) = $numberOfFolders"
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
for (( i = 0; i < 5; i++ )); do
        if [[ -z "${top5fol[i]}" ]]
        then
                break
        fi
        printf "%d - " "$((i + 1))"
        printf "${top5fol[$i]}, "
        printf "${top5fols[$i]}\n"
done
echo "Total number of files = $numberOfAllFiles"
echo "Number of:"
echo -e "Configuration files (with the .conf extension) = $numberOfConfFiles
Text files = $numberOfTxtFiles
Executable files = $numberOfExeFiles
Log files (with the extension .log) = $numberOfLogsFiles
Archive files = $numberOfRarFiles
Symbolic links = $numberOfSLKFiles"
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
for (( i = 0; i < 10; i++ )); do
        if [[ -z "${topfil[i]}" ]]
        then
                break
        fi
        printf "%d - " "$((i + 1))"
        printf "${topfil[$i]}, "
        printf "${topfils[$i]}, "
        printf "${topfilt[$i]}\n"
done

echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
for (( i = 0; i < 10; i++ )); do
        if [[ -z "${topexe[i]}" ]]
        then
                break
        fi
        printf "%d - " "$((i + 1))"
        printf "${topexe[$i]}, "
        printf "${topexes[$i]}, "
        printf "$(md5sum ${topexe[$i]} | awk '{print $1}')\n"
done

end=$(date +%s%N)
sec=$(($end - $start))
secw=`echo "scale=3; $sec / 1000000000"| bc`
echo "Script execution time (in seconds) = $secw s."