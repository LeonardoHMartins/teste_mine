FROM openjdk:17-jre-slim

# Criar diretório para os dados do servidor
RUN mkdir /data

# Definir diretório de trabalho
WORKDIR /data

# Aceitar o EULA (obrigatório para iniciar o servidor)
RUN echo "eula=true" > eula.txt

# Expor a porta padrão do servidor Minecraft
EXPOSE 25565

# Comando para iniciar o servidor
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]