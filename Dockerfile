FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY . . 
RUN dotnet publish -c Release -o output
#RUN dotnet --list-runtimes


# for blazor server
FROM mcr.microsoft.com/dotnet/sdk:6.0
WORKDIR /src
#EXPOSE 5000
#ENV ASPNETCORE_URLS http://+:5000


#RUN dotnet dev-certs https -ep ${HOME}/.aspnet/https/aspnetapp.pfx -p ThisIsABadWayOfPassword
#RUN dotnet dev-certs https -ep /root/.aspnet/DataProtection-Keys/aspnetapp.pfx -p ThisIsABadWayOfPassword
#RUN dotnet dev-certs https --trust
COPY --from=build /src/output/ .
ENTRYPOINT ["dotnet", "app.dll"]
#RUN dotnet --list-runtimes
