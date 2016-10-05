FROM microsoft/dotnet:1.0.0-preview2-sdk

COPY . /app
WORKDIR /app/CoreWebApi/src/CoreWebApi
RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]

#RUN apt-get -qq update && apt-get -qqy --no-install-recommends install \
#    git \
#        unzip
#
#        RUN curl -sL https://deb.nodesource.com/setup_6.x |  bash -
#        RUN apt-get install -y nodejs

#RUN ["npm", "install"]
#RUN ["npm", "install", "-g", "bower"]
#RUN echo '{ "allow_root": true }' > /root/.bowerrc
#RUN ["bower", "install"]
#RUN ["npm", "install", "-g", "gulp"]
#RUN ["gulp", "default"]

EXPOSE 5000
ENV ASPNETCORE_URLS http://*:5000
CMD ["dotnet", "run"]
