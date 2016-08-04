val config= new SparkConf().setMaster("local[2]").setAppName("my app").set("spark.driver.memory", "1g")
    val sc = new SparkContext(config)
    val nums = (1 to 10000).toList
    val rdd = sc.parallelize(nums)
    rdd.foreach(x => println(x))  
    
    
    <dependencies>
  	 <dependency>
    <groupId>org.apache.spark</groupId>
    <artifactId>spark-core_2.10</artifactId>
    <version>2.0.0</version>
</dependency>

<dependency>
    <groupId>org.apache.spark</groupId>
    <artifactId>spark-sql_2.10</artifactId>
    <version>2.0.0</version>
</dependency>
  </dependencies>
