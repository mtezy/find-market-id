#!/bin/bash


merah='\e[91m'
cyan='\e[96m'
kuning='\e[93m'
oren='\033[0;33m' 
margenta='\e[95m'
biru='\e[94m'
ijo="\e[92m"
putih="\e[97m"
normal='\033[0m'
bold='\e[1m'
labelmerah='\e[41m'
labelijo='\e[42m'
labelkuning='\e[43m'
labelpp='\e[45m'
pp=0
cat << "intro"
         Simple to check Market ID on Solana       
intro


	
port80(){
    time=$(date +%d_%m_%y)
    stats="${margenta}[$(date +"%T")]"
    rand1=$(cat /dev/urandom | tr -dc '0-9A-Z' | fold -w 16 | head -n 1)
    pubkey=$(curl -sX GET  -H "user-agent:Mozilla/5.0 (Linux; Android 10; Redmi Note 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Mobile Safari/537.36" -H "content-type:application/json" -H "accept:*/*" -H "origin:https://solanabeach.io" -H "sec-fetch-site:cross-site" -H "sec-fetch-mode:cors" -H "sec-fetch-dest:empty" -H "referer:https://solanabeach.io/" -H "accept-language:id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7" "https://prod-api.solana.surf/v1/markets/$address?limit=1&offset=0&sort=liquidity&dir=desc" | grep -Po '(?<="pubkey":{"address":")[^"]*')
    ticker=$(curl -sX GET  -H "user-agent:Mozilla/5.0 (Linux; Android 10; Redmi Note 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Mobile Safari/537.36" -H "content-type:application/json" -H "accept:*/*" -H "origin:https://solanabeach.io" -H "sec-fetch-site:cross-site" -H "sec-fetch-mode:cors" -H "sec-fetch-dest:empty" -H "referer:https://solanabeach.io/" -H "accept-language:id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7" "https://prod-api.solana.surf/v1/markets/$address?limit=1&offset=0&sort=liquidity&dir=desc" | grep -Po '(?<="quotemint":{"name":")[^"]*')
    price=$(curl -sX GET  -H "user-agent:Mozilla/5.0 (Linux; Android 10; Redmi Note 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Mobile Safari/537.36" -H "content-type:application/json" -H "accept:*/*" -H "origin:https://solanabeach.io" -H "sec-fetch-site:cross-site" -H "sec-fetch-mode:cors" -H "sec-fetch-dest:empty" -H "referer:https://solanabeach.io/" -H "accept-language:id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7" "https://prod-api.solana.surf/v1/markets/$address?limit=1&offset=0&sort=liquidity&dir=desc" | grep -Po '(?<="marketPrice":)[^,]*')
   echo -e "Market ID : ${ijo}$pubkey${putih}\nTicker : $ticker\nPrice : $price $ticker"
    
    
    
		
	
}




printf "${white}[?] Input mint address : "; read address
printf "${white} -> Mint address ${ijo} $limit ${putih}\n"
printf "${white}[?] Threads          : "; read THREADS
printf "${white} -> Set Threads To ${ijo} $THREADS ${putih}\n"
for (( i = 0; i < 1; i++ )); do
  index=$((itung++))
    username="${mailist[$i]}"
    IFS=':' read -r -a array <<< "$username"
    email=${array[0]}
    password=${array[1]}
   tt=$(expr $pp % $THREADS)
   if [[ $tt == 0 && $pp > 0 ]]; then
   sleep 0
   fi
   let pp++
   jam=$(date '+%H')
   menit=$(date '+%M')
   detik=$(date '+%S')
   

	port80 "${email}" "${password}" "${index}" 
	
	
	
	
done

