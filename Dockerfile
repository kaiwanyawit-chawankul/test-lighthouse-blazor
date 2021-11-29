FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY . . 
RUN dotnet publish -c Release -o output



# for blazor server
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /src
COPY --from=build /src/output/ .
ENTRYPOINT ["dotnet", "app.dll"]
