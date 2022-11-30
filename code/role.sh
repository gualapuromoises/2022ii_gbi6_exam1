#Número de registros de cada rol del gen

echo "Número de registros de cada rol del gen:" >>../data/roles.txt

tail -n +2 ../data/cancermine.csv | cut -d "," -f 1| sort |uniq -c >> ../data/roles.txt


#Especie y conteo más alto
echo "Especie y conteo más alto:" >>../data/roles.txt
cat ../data/cancermine.csv | cut -d "," -f 1 | tail -n +2 | sort -n | uniq -c | sort -r | head -n 1 >>../data/roles.txt

#Especie y conteo más bajo
echo "Especie y conteo más bajo:" >>../data/roles.txt
cat ../data/cancermine.csv | cut -d "," -f 1 | tail -n +2 | sort -n | uniq -c | sort -r | tail -n 1 >>../data/roles.txt


