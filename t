val config= new SparkConf().setMaster("local[2]").setAppName("my app").set("spark.driver.memory", "1g")
    val sc = new SparkContext(config)
    val nums = (1 to 10000).toList
    val rdd = sc.parallelize(nums)
    rdd.foreach(x => println(x))  
