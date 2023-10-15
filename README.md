# Qt6-Docker-Dev
Build a Docker Image with Qt6 installed for Desktop and Mobile development

---
After built the Docker Image from this repo, run the container using the command below:
```
docker run -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ --name qt6-build <image-id> bash
```
This command will allows you to interact of your container inside of it, the reason why is because you will need to download the Qt6 installer and install what you need for your project manually. You can download the installer [here](https://www.qt.io/download).

*Copy the download link and paste here*
```
wget <download-url>
```
After download the installer, make it executable and run it with the command below:
```
chmod +x <qt-installer>
```
```
./<qt-installer>
```
