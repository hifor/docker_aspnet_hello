# asp.net core image

docker image for asp.net core application



- create image

```sh
$ docker build -t hub.hifor.net/library/dotnet:latest --build-arg DLL_FILE=hello.dll .
```



- run

```sh
docker run -it -p 8080:80 -d hifor/aspnetcore:latest
```



