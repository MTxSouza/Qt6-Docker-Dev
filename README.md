# Qt6-Docker-Dev
### Qt | *Software Development Framework*
Build a Docker Image with all necessary libraries and packages to work with Qt framework.

---
After build the Docker Image from this repository, make sure to enable all permissions to Docker:
```
xhost +local:docker
```
Build the image from Dockerfile.
```
docker build -t qt6-builder .
```
Then, run the Image in a Container using the command below:
```
docker run -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ --name qt6-build qt6-builder:latest bash
```
This command will allows you to interact of your container inside of it, the reason why is because you will need to download the Qt6 installer and install all the binaries manually, it will allows you to install exactly what you need from Qt6 for your project too. You can download the installer [here](https://www.qt.io/download-qt-installer-oss?hsCtaTracking=99d9dd4f-5681-48d2-b096-470725510d34%7C074ddad0-fdef-4e53-8aa8-5e8a876d6ab4).

Copy the download link clicking with right button on **Download Button** and use the *wget* command to download.
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

---
## Extra informations
This Docker Image does not include Python, to install Python after all steps, run the command bellow:
```
apt install -y python3 python3-pip
```
To use *Python* instead of *Python3* on command line, run the command bellow:
```
apt install python-is-python3
```
