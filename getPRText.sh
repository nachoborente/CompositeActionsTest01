#inputtext=$1
#inputfile=$2
inputfile="prdesc.txt"
inputtext=$(cat prdesc.txt)

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
