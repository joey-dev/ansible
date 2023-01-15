apt list --installed | grep "installed]$" > currentInstalledApps.txt

cat tasks/core-setup-ubuntu.yml | grep "name: \[" > autoInstalled.txt
cat autoInstalled.txt | sed 's/name: \[//' | sed 's/\]//' | sed 's/    //' > autoInstalled2.txt
awk -F',' '{ for( i=1; i<=NF; i++ ) print $i }' <<< cat autoInstalled2.txt > autoInstalled3.txt
cat autoInstalled3.txt | sed 's/ //' | sed 's/\"//' | sed 's/\"//' > autoInstalled4.txt

cp autoInstalled4.txt ansibleInstalledApps.txt
rm autoInstalled.txt
rm autoInstalled2.txt
rm autoInstalled3.txt
rm autoInstalled4.txt

cp currentInstalledApps.txt notInAnsible.txt

file="ansibleInstalledApps.txt"
while read line; do
	grep -v "${line}" notInAnsible.txt > notInAnsible2.txt 
	rm notInAnsible.txt
	mv notInAnsible2.txt notInAnsible.txt
done < "$file"

file="notInAnsibleIgnore.txt"
while read line; do
	grep -v "${line}" notInAnsible.txt > notInAnsible2.txt 
	rm notInAnsible.txt
	mv notInAnsible2.txt notInAnsible.txt
done < "$file"

file="notInAnsibleIgnore.local.txt"
while read line; do
	grep -v "${line}" notInAnsible.txt > notInAnsible2.txt 
	rm notInAnsible.txt
	mv notInAnsible2.txt notInAnsible.txt
done < "$file"
