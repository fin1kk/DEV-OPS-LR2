#!/bin/bash
CITY="$1"
[ -z "$CITY" ] && { echo "Usage: $0 <city>"; exit 1; }

DATA=$(curl -s "https://wttr.in/${CITY}?format=j1")
TEMP=$(echo "$DATA" | jq -r '.current_condition[0].temp_C')
HUM=$(echo "$DATA" | jq -r '.current_condition[0].humidity')

cat <<EOF > /var/www/html/index.html
<html><body style="font-family:sans-serif;text-align:center;">
<h2>Weather in $CITY</h2>
<p>Temperature: $TEMP°C<br>Humidity: $HUM%</p>
<small>$(date)</small>
</body></html>
EOF
