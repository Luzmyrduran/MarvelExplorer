# Marvel Explorer
Catálogo web con las generalidades de los diferentes personajes del universo Marvel, que permite navegar y mostrar a detalle las peculiaridades de los diferentes personajes.

# Instalacion
- Abrir el archivo MARV.Web/appsettings.json y cambiar las ConnectionString segun corresponda para su instancia de SQL Server
- Establecer como proyecto de inicio (Startup project) el proyecto MARV.Web

# Preparacion de BD usando Visual Studio
El proyecto fue realizado utilizando la metodologia Code-First, por lo que generar la base de datos constara de los siguientes pasos
- En menu seleccionar Herramientas -> Administrador de paquetes nuget -> Consola de administracion de paquetes
- Tras el paso anterior aparecera un panel, seleccionar en Default Project el proyecto MARV.Data
- Ejecutar el comando Update-Database

# Preparacion de BD usando Script
- Crear Schema con el nombre MarvelExplorer
- En la ubicacion MARV.Data/Scripts existe un script con el nombre "MarvelExplorerScript 060220212242.sql"

# Tecnologias utilizadas
- .Net Core 3.1
- Bootstrap
- SQL Server 18

# Documentacion adicional
Diagrama ER se encuentra en la ubicacion "MARV.Data/Diagrama/DER Base de datos MarvelExplorer.png"

# Autora
Luz María Rivas Durán, luz.rivas@outlook.es
