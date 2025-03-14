# Utilisation d'une image de base officielle pour OpenJDK 17
FROM amazoncorretto:17-alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier JAR dans le conteneur
COPY target/paymybuddy.jar /app/paymybuddy.jar

# Exposer le port 8080
EXPOSE 8080

# Commande pour démarrer l'application Spring Boot
CMD ["java", "-jar", "paymybuddy.jar"]

