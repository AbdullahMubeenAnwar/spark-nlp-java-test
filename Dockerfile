# Use OpenJDK placeholder; override at build time
ARG JAVA_VERSION=openjdk:11
FROM ${JAVA_VERSION}

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Install Spark NLP and PySpark
RUN pip3 install --upgrade pip && \
    pip3 install numpy spark-nlp pyspark

# Copy test script and runner
COPY test_sparknlp.py /app/test_sparknlp.py
COPY run_tests.sh /app/run_tests.sh

WORKDIR /app
RUN chmod +x run_tests.sh

CMD ["./run_tests.sh"]
