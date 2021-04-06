#/bin/bash
#/bash/bin
echo -e '\n\tMe: Hello Waseem! Ye Requirement Nahe ho sakte  \n\tWaseem: No way\n\tMe: ............................?\n\tWaseem: Nothing is impossible!' | boxes -d boy

echo 'Stopping Local Services  ' | boxes
/home/asd/stopServices.sh

#

echo 'Deleting All None Images  ' | boxes
docker rmi $(docker images --filter 'dangling=true' -q --no-trunc)
# docker rmi $(docker images --filter 'dangling=true' -q --no-trunc)

#docker system prune -a


echo 'Deleting Socket File    ' | boxes
cd django
sudo rm -f eagle_eye.sock
cd ..

echo "Deleted Socket File " | boxes
docker-compose -f "docker-compose.yml" up -d --build

echo "Allow Socket File Permissions  " | boxes
cd django
sudo chmod -R 777 eagle_eye.sock
cd ..

echo -e '\n\tMe: When nothing goes right go left   \n\tWaseem: Why dont you go above \n\t...................... \n\tWaseem: Stop decorating bash and work ' | boxes -d boy

#  daphne  -b 0.0.0.0  -p 8001  d_auth.asgi:application
        