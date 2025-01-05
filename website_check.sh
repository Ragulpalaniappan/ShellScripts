#!/bin/bash
#Create a script the check tha availability of list of websites 


Websites=(www.google.com www.youtube.com www.gmail.com)

check_Website(){
  URL=$1
  HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL")
  
  if [ "$HTTP_STATUS" -ne 200 ]; then
        # Website is unreachable
        echo "Website $URL is unreachable. HTTP status code: $HTTP_STATUS"
  else
        # Website is reachable
        echo "Website $URL is reachable."
  fi
}

for Website in ${Websites[@]}; do
    check_Website $Website
done
    
    




