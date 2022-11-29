#cuantos 
grep '>' cancermine.csv | cut -d ',' -f 4 | sort | uniq | wc -l 

#
grep '>' cancermine.csv | cut -d ',' -f 1,3 |sort -t '=' -k 2 -n -r | head -n 1
