echo " Pregunta 1"
echo " "
#Número de registros de cada rol del gen
echo "Núm. de registros de cada rol del gen:"
echo ../data/cancermine.csv | cut -d "," -f 1 | tail -n +2 | wc -l >> ../data/roles.txt

#Especie y conteo más alto
echo "Especie y conteo más alto:"  >> ../data/roles.txt

echo ../data/cancermine.csv | cut -d "," -f 1 | tail -n +2 | grep "Oncogene" | uniq -c | sort >> ../data/roles.txt

#Especie y conteo más bajo 
echo "Especie y conteo más bajo:"  >> ../data/roles.txt

echo ../data/cancermine.csv | cut -d "," -f 1 | tail -n +2 | grep "Driver" | uniq -c | sort >> ../data/roles.txt
