SERVER="challenge.ctf.games"
PORT=30898
FROM="admin@pyrchdata.com"
TO="swilliams@pyrchdata.com"
SUBJ="URGENT: IMMEDIATE NEED"
MESSAGE="Hi Sarah, it's me, Alex. I need you to send me money quickly or else we'll go bankrupt. Thank you! Alex Pyrch"
CHARSET="utf-8"

sendemail -f $FROM -t $TO -u $SUBJ -s $SERVER:$PORT -m $MESSAGE -v -o message-charset=$CHARSET