# 1) Image de base Java 17
FROM eclipse-temurin:17-jdk

# 2) Répertoire de travail dans l'image
WORKDIR /app

# 3) Copier le jar généré par Maven (nom exact du tien)
COPY target/demo-github-0.0.1-SNAPSHOT.jar app.jar

# 4) Exposer le port Spring Boot
EXPOSE 8080

# 5) Démarrer l'application
ENTRYPOINT ["java","-jar","/app/app.jar"]