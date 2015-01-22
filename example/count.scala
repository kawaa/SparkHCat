val f = classOf[com.getindata.sparkhcat.input.SparkHCatInputFormat]
val k = classOf[org.apache.spark.SerializableWritable[org.apache.hadoop.io.Writable]]
val v = classOf[org.apache.hive.hcatalog.data.HCatRecord]

val conf = new org.apache.hadoop.conf.Configuration()
conf.set("hive.metastore.uris", "thrift://hdp3:9083");

org.apache.hive.hcatalog.mapreduce.HCatInputFormat.setInput(conf, "default", "spark_hcat_test", "type='46' or type='5200'")

val table = sc.newAPIHadoopRDD(conf, f, k, v)

table.count()

exit()
