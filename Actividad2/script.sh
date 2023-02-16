
gituser="DannyCuxum"

echo gituser


response=$(curl -s https://api.github.com/users/$gituser)


id=$(echo $response | jq -r '.id')
created_at=$(echo $response | jq -r '.created_at')


echo "hola $gituser. User ID: $id. cuenta fue creada el: $created_at."

fecha=$(date +%Y-%m-%d)

if [ ! -d "/tmp/$fecha" ]; then
    mkdir "/tmp/$fecha"
fi

echo "Hola $gituser. User ID: $id. Cuenta fue creada el: $created_at." >> "/tmp/$fecha/saludos.log"