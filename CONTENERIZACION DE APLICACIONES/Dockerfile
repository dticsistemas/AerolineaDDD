#CONTENERIZACIÓN DE APLICACIONES - PROYECTO AEROLINEA MICROSERVICIO CONTROL.DOCUMENTO.FACTURA

FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["ControlDocumentoFactura.WebApi/ControlDocumentoFactura.WebApi.csproj", "ControlDocumentoFactura.WebApi/"]
COPY ["ControlDocumentoFactura.Aplicacion/ControlDocumentoFactura.Aplicacion.csproj", "ControlDocumentoFactura.Aplicacion/"]
COPY ["ControlDocumentoFactura.Dominio/ControlDocumentoFactura.Dominio.csproj", "ControlDocumentoFactura.Dominio/"]
COPY ["ShareKernel/ShareKernel.csproj", "ShareKernel/"]
COPY ["ControlDocumentoFactura.Infraestructura/ControlDocumentoFactura.Infraestructura.csproj", "ControlDocumentoFactura.Infraestructura/"]
RUN dotnet restore "ControlDocumentoFactura.WebApi/ControlDocumentoFactura.WebApi.csproj"
COPY . .
WORKDIR "/src/ControlDocumentoFactura.WebApi"
RUN dotnet build "ControlDocumentoFactura.WebApi.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "ControlDocumentoFactura.WebApi.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "ControlDocumentoFactura.WebApi.dll"]