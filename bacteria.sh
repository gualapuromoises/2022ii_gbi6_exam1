cp data/cancermine.csv cancermine2.csv

cut -d "," -f 1 ../cancermine2.csv | sort | uniq -c | > roles.txt
