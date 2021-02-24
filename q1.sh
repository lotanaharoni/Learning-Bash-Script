Directory=$@
if [ -d "$Directory" ]; then
  cd $Directory
    # Task 1: List all .log files under a path that will be given as parameter to the job and write them to a temp file
    Contents=$(ls -a | grep "\.log")
  #  echo $Contents
    if ((${#Contents[0]})); then
        echo $Contents > temp.txt
       # cat temp.txt
        for i in "${Contents[@]}"; do
         #   echo $i
            printf "$i" > temp.txt
        done
        # Task 2: Go over each log file listed in the temp file from #1 and search how many lines contain
        # the word ERROR and print them to the screen
        for i in "${Contents[@]}"; do
            grep -c ".*ERROR.*" $i
        done
    else
        echo "There is no log files there"
        exit 1
    fi
else
    echo "Directory does not exists"
    exit 1
fi

