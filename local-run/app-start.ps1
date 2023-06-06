.\mvnw package verify
if ($LastExitCode -eq 0) {
    java -Xmx512m "-Dserver.port=8081" `
    "-Dspring.datasource.url=jdbc:postgresql://localhost:5432/postgres" "-Dspring.datasource.username=user" "-Dspring.datasource.password=password" `
    -jar target\cloudnative-db-1.0.0-SNAPSHOT.jar
}
