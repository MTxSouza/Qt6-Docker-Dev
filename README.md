# Qt6-Docker-Dev
### Qt | *Software Development Framework*
Build a Docker Image with all necessary libaries and packages to work with Qt framework.


---
After built the Docker Image from this repository, make sure to enable all permissions for Docker:
```
xhost +local:docker
```
Build the image from Dockerfile
```
docker build -t qt6-builder .
```
Then, run the Image in a Container using the command below:
```
docker run -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ --name qt6-build qt6-builder:latest bash
```
This command will allows you to interact of your container inside of it, the reason why is because you will need to download the Qt6 installer and install all the binaries manually, it will allows you to install exactly what you need from Qt6 for your project too. You can download the installer [here](https://www.qt.io/download-qt-installer-oss?hsCtaTracking=99d9dd4f-5681-48d2-b096-470725510d34%7C074ddad0-fdef-4e53-8aa8-5e8a876d6ab4).

*Copy the download link clicking with right button on **Download Button** and paste here*
```
wget <qt-installer-download-url>
```
After download the installer, make it executable first.
```
chmod +x <qt-installer-file>
```
To run the installer, use the command below:
```
./<qt-installer-file>
```
