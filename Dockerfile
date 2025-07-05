ARG JAVA_VERSION=openjdk:8
FROM ${JAVA_VERSION}

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip && \
    pip3 install numpy spark-nlp==6.0.4 pyspark==3.5.6

COPY test_sparknlp.py /app/test_sparknlp.py
COPY run_tests.sh /app/run_tests.sh

WORKDIR /app
RUN chmod +x run_tests.sh

CMD ["./run_tests.sh"]
