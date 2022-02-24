# Sample Project
## Installation
Make a directory on your system and open your terminal in the directory and then clone this project
```
clone https://github.com/johannesmu/phpDockerProjectSample .
```
## Run using Docker Desktop
### Building an image
```
docker build -t php8dev .
```
after build is finished you can create the containers using
```
docker compose up
```
### Using Xampp
copy the contents of the www folder into your www folder in your Xampp installation