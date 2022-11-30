###Codigo para generar archivos .txt

#Para tumor_supressor , Oncogene , Driver
cat data/cancermine.csv | cut -d "," -f 1 | tail -n +2 | sort -n | uniq -c | tail -n 1 > Tumor_supresor.txt
cat data/cancermine.csv | cut -d "," -f 1 | tail -n +2 | sort -n | uniq -c | tail -n 2 | head -n 1 > Oncogene.txt
cat data/cancermine.csv | cut -d "," -f 1 | tail -n +2 | sort -n | uniq -c | head -n 1 > Driver.txt
