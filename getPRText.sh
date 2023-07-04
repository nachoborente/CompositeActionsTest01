inputtext=$1
inputfile=$2


echo "$inputtext" | while IFS= read -r line
do
if [[ $OpenClassMD == 1 ]]
then
if [[ $line == *"\`\`\`"* ]]
then
	CloseMD=1
	OpenClassMD=0
else
	ListOfClass=$line
	echo "$line" > TestToBeRun.txt
fi
fi
if [[ $line == *"\`\`\`TestsToBeRun"* ]]
then
	OpenClassMD=1
fi	
done
cat TestToBeRun.txt
