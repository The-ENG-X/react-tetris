#
npm install 
#
npm run build

#
docker image build -t <image_name>:<tag> <path>
docker image build -t react-tutorial-image:latest .

#
docker image ls

#
docker run -dp <Host-Port>:<Container-Port> --name <Container-Name> <Image-Name>:<Tag>
docker run -dp 8000:3000 --name react-tutorial-container react-tutorial-image:latest

#
docker image tag react-tutorial-image <username>/react-tutorial-image

#
docker push <username>/react-tutorial-image


#
docker image build -t react-tutorial-image:upgrade .

#
docker image tag react-tutorial-image:upgrade <username>/react-tutorial-image:upgrade

#
docker run -dp 8000:3000 --name react-tutorial-container react-tutorial-image:latest

#
docker stop <name>

#
docker exec -it <container-name-or-id> <shell-executable>
