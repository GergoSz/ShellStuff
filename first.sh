#! /bin/bash

function getData(){
  j=$1
  k=$2
  somestuff=$( awk -v data="$k" -v line="$j" 'BEGIN{ FS=":"; RS="\n" }  FNR == line {print  $(data)} ' lista.txt )
  echo $somestuff
}

#editData($numOfRecord, $numOfLine, $newValue){



#}

#appendData($name, $tankor, $grades[]){



#}

#tantargySzam=
#echo `wc -l "tantargyak.txt"`
#echo $tantargySzam
#for (( i = 0; i -ge $tantargySzam; i++ )); do
  #echo "pls work"
#done

#echo "Hello World"
echo "PLS"
atlag=0
count=6
for (( i = 3; i < 9; i++ )); do
  cur=0
  ((j = i))
  cur=$( awk -v var="$i" 'BEGIN{ FS=":"; } NR > 1 { exit }; 1  {printf "%d", $(var)}  ' lista.txt )
  ((sum = $sum + $cur))
done
#echo $sum
#atlag=$(echo "$sum / $count" | bc -l)
(( atlag = $sum / $count))
#echo $atlag
i=$1
x=$2
somestuff2=$( awk -v var="$i" -v line="$x" 'BEGIN{ FS=":"; RS="\n" }  FNR == line {print  $(var)} ' lista.txt )
echo $somestuff2
k=2
j=1
plswork=$(getData $k $j)



echo $plswork "??"


#read number
#awk -v var="$number" 'BEGIN{ FS=":" } {printf "%d", $(var)}' > output.txt
#awk 'BEGIN{ FS=":" } {print $2}' lista.txt
echo "READ"
read
echo "END"
