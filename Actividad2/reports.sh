#!/bin/bash
# chmod +x nombre_del_archivo.sh
# ./nombre_del_archivo.sh

# Leer la variable
echo "hola"

gituser="DannyCuxum"

echo $gituser

response=$(curl -s https://api.github.com/users/$gituser)

id=$(echo $response | jq -r '.id')
created_at=$(echo $response | jq -r '.created_at')

# Imprimir el mensaje con los valores extraídos
echo "hola $gituser. User ID: $id. cuenta fue creada el: $created_at."