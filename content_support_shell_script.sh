# #!/bin/bash

token="Authorization:Token token=0b4af23eaf275daaf41c7e57749532f128660ec3befa0ff3aee94636e86a43e7"
get_api=https://api.caavo.com/expired_ott/is_available/
post_api=https://api.caavo.com/expired_ott/create/
delete_api=https://api.caavo.com/expired_ott/delete/

# Define GET function here
GET () {
   test=$(curl -X GET --data "service_short_name=$service_name&source_program_id=$source_program_id" $get_api --header "$token")
   echo -e "\n ${test}"
}

# Define POST function here
POST () {
    test=$(curl -X POST --data "service_short_name=$service_name&source_program_id=$source_program_id" $post_api --header "$token")
    echo -e "\n ${test}"
}

# Define DELETE function here
DELETE () {
    test=$(curl -X DELETE --data "service_short_name=$service_name&source_program_id=$source_program_id" $delete_api --header "$token")
    echo -e "\n ${test}"
}

data="$(pwd -P)/data"
while IFS= read -r line || [ -n "$line" ];
do
    service_name=${line%%\t*}
    source_program_id=${line#*\t}
    echo -e "$service_name, $source_program_id"
    GET service_name source_program_id
done < "$data"