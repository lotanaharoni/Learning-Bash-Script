read Name
cd $Name
Contents=$(ls | grep "\.log")
for i in "${Contents[@]}"; do
    printf "$i" > temp.txt
done

for i in "${Contents[@]}"; do
    grep -c ".*ERROR.*" $i
done
