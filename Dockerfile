FROM maven:3.8.7-openjdk-11 AS builder
WORKDIR /app

# Copier seulement le fichier pom.xml pour télécharger les dépendances Maven
COPY pom.xml .

# Télécharger les dépendances Maven sans compiler le projet
RUN mvn dependency:go-offline

# Copier le reste des fichiers du projet, y compris les sources de l'application
COPY src ./src

# Compiler et packager le projet sans exécuter les tests
RUN mvn clean package -DskipTests

# Étape finale
FROM openjdk:11-jre-slim
WORKDIR /app

# Copier le fichier JAR généré depuis l'étape de build
COPY --from=builder /app/target/simple-maven-app-1.0-SNAPSHOT.jar app.jar

# Commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "/app.jar"]
