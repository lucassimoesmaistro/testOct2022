input="./file1.txt"
soma=0

diretory=.
for entry in "$diretory"/*.txt
do
  echo "$entry"
  while IFS= read -r line 
  do
    valor=$(echo $line | cut -c 5-9)
    echo $valor
    soma=$(echo "$soma + $valor"|bc)
    echo $soma
  done < "$entry"
done