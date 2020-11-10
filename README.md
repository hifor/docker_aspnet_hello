# asp.net core image

docker image for asp.net core application



```sh
docker run -it -p 8080:80 -d hifor/aspnetcore:latest
```



```sh
docker run -it \
    -p 8080:80 \
    --name=dn-hello \
    -e ENV_DLL_FILE=hello.dll \
    -d hifor/aspnetcore:latest
```



```sh
docker run -it \
    -p 8080:80 \
    --name=dn-hello \
    -v /var/local/aspnet:/app \
    -e ENV_DLL_FILE=hello.dll \
    -d hifor/aspnetcore:latest
```

