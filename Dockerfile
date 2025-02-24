# Uygulamanın çalışması için  JDK lazım.

FROM openjdk:17

#Projenin jar dosyasının konumu

ARG JAR_FILE=target/*.jar


#rPojenin jar halini dockerın içine kopyala
COPY ${JAR_FILE}  devops-app-2024.jar

#terminalde çalıştırmak istediğimiz komutları burda yazarız

CMD apt-get update

#iç portu sabitlemek için
EXPOSE 8080

#Uygulamanın çalışacağı komut
ENTRYPOINT [ "java", "-jar", "devops-app-2024.jar"]

