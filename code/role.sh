#Contal el numero de registro de cada rol del gen
tail -n +2 ../data/cancermine.csv | cut -d "," -f 1| sort |uniq -c >> ../data/roles.txt
#Contar el numero de registro de cada rol del gen
echo "Conteo y especie mas alto" >> ../data/roles.txt
tail -n +2 ../data/cancermine.csv | cut -d "," -f 1 | grep "Oncogene" | sort | uniq -c >> ../data/roles.txt
echo "Conteo y especie mas bajo" >> ../data/roles.txt
tail -n +2 ../data/cancermine.csv | cut -d "," -f 1 | grep "Driver" | sort | uniq -c >> ../data/roles.txt
