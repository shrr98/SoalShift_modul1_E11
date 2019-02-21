### A
awk -F, 'BEGIN {max = 0} NR>1 && $7 == "2012" { qty[$1]+=$10 } END { for(i in qty) { if(max<qty[i]) { max = qty[i]; neg = i }} print neg }' WA_Sales_Products_2012-14.csv > output_2A

### B
awk -v var="$(cat output_2A)" -F, 'NR>1 && $7=="2012" && $1==var { qty[$4]+=$10 } END { for(i in qty) {print qty[i] ","  i } }' WA_Sales_Products_2012-14.csv | sort -nr | head -3 | awk -F, '{ print $2 }' > output_2B

### C
awk -v pl="$(cat output_2B | tr '\n', ',')" -v stt="$(cat output_2A)" -F, 'BEGIN {split(pl, pp)} NR>1 && $7=="2012"  && $1==stt { for(j in pp) { if (pp[j]==$4){qty[$6]+=$10 }}} END { for(i in qty) {print qty[i] "," i} }' WA_Sales_Products_2012-14.csv | sort -nr | head -3 |awk -F, '{print $2}'
