# Spark NLP Java Version Compatibility Test

Test  **Spark NLP** compatibility with different **Java versions** using Docker.

## Java Versions Used
- `openjdk:8`
- `openjdk:11`
- `openjdk:17-slim`
- `openjdk:21-slim`

---

##  Build & Run Instructions

### ✅ Java 8
```bash
docker build --build-arg JAVA_VERSION=openjdk:8 -t spark-nlp-java8 .
docker run --rm spark-nlp-java8
```

### ✅ Java 11
```bash
docker build --build-arg JAVA_VERSION=openjdk:11 -t spark-nlp-java11 .
docker run --rm spark-nlp-java11
```

### ✅ Java 17
```bash
docker build --build-arg JAVA_VERSION=openjdk:17-slim -t spark-nlp-java17 .
docker run --rm spark-nlp-java17
```

### ✅ Java 21
```bash
docker build --build-arg JAVA_VERSION=openjdk:21-slim -t spark-nlp-java21 .
docker run --rm spark-nlp-java21
```
