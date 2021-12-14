# test-lighthouse-blazor

https://docs.microsoft.com/en-us/aspnet/core/security/docker-compose-https?view=aspnetcore-6.0

dotnet dev-certs https -ep ${HOME}/.aspnet/https/aspnetapp.pfx -p { password here }
dotnet dev-certs https -ep ${HOME}/.aspnet/https/aspnetapp.pfx -p crypticpassword
dotnet dev-certs https --trust


docker-compose up --build --abort-on-container-exit --exit-code-from lhci
docker build --no-cache -f Dockerfil.lhci -t lhci .  