#lit a
echo "literal A"
cut -d "," -f 1 ../data/cancermine.csv | tail -n +2 | sort | uniq -c
#lit b
echo "literal B" 
cut -d "," -f 1 ../data/cancermine.csv | tail -n +2 | sort | uniq -c | sort -n -r | head -n 1

#lit c
echo "literalC" 
cut -d "," -f 1 ../data/cancermine.csv | tail -n +2 | sort| uniq -c| sort -n | head -n 1
