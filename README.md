
# msa-template-ruby

Example of a microservice written in Ruby, with the [Sinatra](http://www.sinatrarb.com/) framework.

## Usage

To build the microservice Docker image, execute the build script :

```
./docker-build.sh
```

Once the container is created, executed it with the following command :

```
docker run -ti -p 8080:80 msagency/msa-template-ruby:1.0.0
```

## Endpoints

- [/hello-world](/hello-world) : returns {"message":"Hello, World !"}

## Standard endpoints

- [/ms/version](/ms/version) : returns the version number

- [/ms/name](/ms/name) : returns the name

- [/ms/readme.md](/ms/readme.md) : returns the readme (this file)

- [/ms/readme.html](/ms/readme.html) : returns the readme as html

- [/swagger/swagger.json](/swagger/swagger.json) : returns the swagger api documentation

- [/swagger/#/](/swagger/#/) : returns swagger-ui displaying the api documentation

- [/nginx/stats.json](/nginx/stats.json) : returns stats about Nginx

- [/nginx/stats.html](/nginx/stats.html) : returns a dashboard displaying the stats from Nginx

## About

A project by the [Microservices Agency](https://microservices.agency).
