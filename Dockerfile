FROM mcr.microsoft.com/dotnet/core/aspnet:2.1-alpine
MAINTAINER Hifor "https://www.hifor.net"

ARG DLL_FILE=app.dll
ENV ENV_DLL_FILE=$DLL_FILE

#把当前目录复制到镜像的 app目录
COPY ./file /app
#指定工作目录
WORKDIR /app
#暴露的端口 是之前准备asp.net core应用设置的端口一致 UseUrls(“http://*:80”)
EXPOSE 80

#最后设置启动的dll
ENTRYPOINT dotnet $ENV_DLL_FILE