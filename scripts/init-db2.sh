#!/scripts

until [ "$RESPONSE" = "400" ] || [ "$RESPONSE" = "200" ]; do
    RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" -X POST -H "Content-Type: application/json" -d '{"firstName": "User", "lastName": "Master",  "username": "eduardo.rocha@routeasy.com.br", "password": "Rout3@sy123", "email": "eduardo.rocha@routeasy.com.br"}' http://localhost:3000/auth/registerFromSiteInfo)
    echo "$RESPONSE"
done