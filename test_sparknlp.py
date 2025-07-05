import sparknlp

try:
    spark = sparknlp.start()
    print("✅ Spark NLP version:", sparknlp.version())
    print("✅ Spark version:", spark.version)
    print("✅ Java version:", spark._jvm.java.lang.System.getProperty("java.version"))
except Exception as e:
    print("❌ Failed to initialize Spark NLP")
    print(str(e))
