# Gunakan base image JDK 17 atau versi yang sesuai
FROM openjdk:17-jdk-slim

# Tentukan direktori kerja dalam container
WORKDIR /app

# Salin file jar ke dalam container
COPY target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar app.jar

# Tentukan perintah untuk menjalankan aplikasi
ENTRYPOINT ["java", "-jar", "app.jar"]
