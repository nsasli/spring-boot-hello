# Gunakan base image JDK 17 atau versi yang sesuai
FROM openjdk:17-jdk-slim

# Tentukan direktori kerja dalam container
WORKDIR /app

# Salin file jar ke dalam container
COPY target/spring-boot-hello-world-0.0.1-SNAPSHOT.jar app.jar

# Tentukan perintah untuk menjalankan aplikasi
ENTRYPOINT ["java", "-jar", "app.jar"]
