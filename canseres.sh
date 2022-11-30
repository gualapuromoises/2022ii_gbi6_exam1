
###Codigo para generar archivos .txt

vector=`head -n 3 ../data/roles.txt | tr -s " " "," | cut -d "," -f 3
 `
for i in $vector
 do
 archivos=`touch ../data/ $i.txt`
 mv $i.txt ../data
done
