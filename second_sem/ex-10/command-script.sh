token=$1
request_url="https://api.telegram.org/bot$token"
offset=0

while true; do
  updates=$(curl -s "$request_url/getUpdates?offset=$offset")
  message_id=$(echo $updates|jq '.result[-1].update_id')
  if [ "$message_id" != "null" ]; then
    offset=$((message_id+1))
    chat_id=$(echo $updates|jq -r '.result[-1].message.chat.id')
    text=$(echo $updates|jq -r '.result[-1].message.text')
    if [ "$text" = "Дата" ]; then
      ../ex-7/send_message.sh $token $chat_id "$(date '+%d.%m.%Y')"
      break
    fi
  fi
  sleep 2
done 
    
