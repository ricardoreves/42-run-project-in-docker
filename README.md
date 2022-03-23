# 42 Run project in docker

## 🪧 Overview
Allows you to test 42 projects in a linux environment and use valgrind to detect memory leaks.



## :rocket: Getting started
### Prerequisites
1. Install Docker on your machine
- [Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
- [MacOS](https://docs.docker.com/desktop/mac/install/)

#### MacOS
1. You can configure shared paths from 
```
Docker -> Preferences... -> Resources -> File Sharing
```
2. Add path to expored directory
```
/goinfre/login42
```

### Installation

1. Clone the repo
```
git clone git@github.com:ricardoreves/42-run-project-in-docker.git
```

2. Go to the directory
```
cd 42-run-project-in-docker
```

3. Generate the image `42/ubuntu` with `Dockerfile`
```
docker build -t 42/ubuntu .
```

4. Create an alias `ftdocker`

##### zsh
Open your `~/.zshrc`
```
vim ~/.zshrc
```
Append the line below
```
alias ftdocker='docker run -it --rm -v $(pwd):/project 42/ubuntu'
```
Reload your `~/.zshrc`
```
source ~/.zshrc
```

##### bash
Open your `~/.bashrc`
```
vim ~/.bashrc
```
Append the line below
```
alias ftdocker='docker run -it --rm -v $(pwd):/project 42/ubuntu'
```
Reload your `~/.bashrc`
```
source ~/.bashrc
```


## :joystick: Usage

1. Go to the project directory

```
cd path/to/the-project
```

2. Run current project with image `42/ubuntu`

```
ftdocker
```

3. Quit docker bash

```
exit
```


### :keyboard: Useful Docker commands
List docker images
```
docker images
```

Delete docker image
```
docker image rm <image-id>
```

List docker containers
```
docker container ls
```

### :books: References
- [codefresh.io](https://codefresh.io/docker-tutorial/build-docker-image-dockerfiles/) - Build docker image with dockerfiles
- [docs.docker.com](https://docs.docker.com/desktop/mac/) - Docker Desktop for Mac user manual
