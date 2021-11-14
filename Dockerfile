# Images base
FROM ubuntu

# Ejecutar Comando (Construccion imagen)
RUN apt-get update
RUN apt-get install python3 python3-dev -y
RUN apt-get install postgresql-client -y
RUN mkdir /app

#Definir mi directorio de trabajo
WORKDIR /app

# Variables de entorno
# Se usa para configuracion de aplicaciones
ENV MSG="Saludos malditos :v"

# Copiar archivo a mi contenedor
ADD . .
#ADD index.html .
#ADD index.html /app
# COPY

# Ejecuta comandos (corriendo imagen) - en el contenedor
# Levantar un servidor web
CMD python3 -m http.server 5000

# Exponer puertos de tu contenedor
EXPOSE 5000