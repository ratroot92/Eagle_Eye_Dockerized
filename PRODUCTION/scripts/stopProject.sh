#/bin/bash

cd /home/asd/Desktop/Eagle_EYE/docker
echo 'Deleting Socket File    ' | boxes
cd django
sudo rm -f /home/asd/Desktop/Eagle_EYE/docker/django/eagle_eye.sock
sudo rm -f /home/asd/Desktop/Eagle_EYE/docker/django/eagle_eye.sock.lock
sudo rm -f /home/asd/Desktop/Eagle_EYE/docker/django/daphne.sock
sudo rm -f /home/asd/Desktop/Eagle_EYE/docker/django/daphne.sock.lock
cd ..
docker-compose down 
echo "Success "