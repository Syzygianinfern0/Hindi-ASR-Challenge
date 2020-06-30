# Tools
## DockerFile

The `DockerFile` here would install Kaldi-ASR into a Docker Container. You can use this method if you would like to have clean dependencies on your local machine and not worry about the different paths and dependency issues during setup. For the installation of Docker please refer the [official docs here](https://docs.docker.com/get-docker/)

On an Ubuntu system, just running these commands would get you set up with the installation of Docker and the Dockerfile here. 
```bash
$ sudo apt-get remove docker docker-engine docker.io containerd runc
$ sudo apt-get update
$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
$ sudo apt-get update
$ sudo apt-get install docker-ce docker-ce-cli containerd.io

$ docker build -t "NAME:Dockerfile" .   # Run this command from the current directory
$ docker images     # The built docker image must be visible here
```

## Install Script

You can also rather perform the installation outside a container on your local machine. Please inspect the script provided here before executing it. If you require GPU support, that would have to set up on your own. 

```bash
$ chmod +x quickstart.sh
$ ./quickstart.sh
```

### Disclaimer of Damages
Notwithstanding anything in this Agreement to the contrary, in no event shall either Party be liable to the other under any theory, including negligence, for any indirect, incidental, consequential, special or exemplary damages or lost profits.