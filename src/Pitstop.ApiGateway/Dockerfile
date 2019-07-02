FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/dotnet:2.2-sdk AS build
WORKDIR /src
COPY ["src/Pitstop.ApiGateway/Pitstop.ApiGateway.csproj", "src/Pitstop.ApiGateway/"]
RUN dotnet restore "src/Pitstop.ApiGateway/Pitstop.ApiGateway.csproj"
COPY . .
WORKDIR "/src/src/Pitstop.ApiGateway"
RUN dotnet build "Pitstop.ApiGateway.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "Pitstop.ApiGateway.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "Pitstop.ApiGateway.dll"]