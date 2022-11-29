echo " Pregunta 1"
echo " "
#Número de registros de cada rol del gen
echo "Núm. de registros de cada rol del gen:"
cat ../data/cancermine.csv | cut -d "," -f 1 | tail -n +2 | wc -l

#Especie y conteo más alto
echo "Especie y conteo más alto:"
cat ../data/cancermine.csv | cut -d "," -f 1 | tail -n +2 | sort -n | uniq -c | sort -r | head -n 1

#Especie y conteo más bajo
echo "Especie y conteo más bajo:"
cat ../data/cancermine.csv | cut -d "," -f 1 | tail -n +2 | sort -n | uniq -c | sort -r | tail -n
