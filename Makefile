all:
# Make sbatch with all configuration
	echo "Creating magpie.sbatch"
	cp templates/magpie-header magpie.sbatch
	echo "" >> magpie.sbatch
	cat templates/magpie-sbatch >> magpie.sbatch
	echo "" >> magpie.sbatch
	cat templates/magpie-magpie-customizations >> magpie.sbatch
	echo "" >> magpie.sbatch
	cat templates/magpie-general-configuration >> magpie.sbatch
	echo "" >> magpie.sbatch
	cat templates/magpie-hadoop >> magpie.sbatch
	echo "" >> magpie.sbatch
	cat templates/magpie-hadoop-mode-details >> magpie.sbatch
	echo "" >> magpie.sbatch
	cat templates/magpie-uda >> magpie.sbatch
	echo "" >> magpie.sbatch
	cat templates/magpie-pig >> magpie.sbatch
	echo "" >> magpie.sbatch
	cat templates/magpie-zookeeper >> magpie.sbatch
	echo "" >> magpie.sbatch
	cat templates/magpie-hbase >> magpie.sbatch
	echo "" >> magpie.sbatch
	cat templates/magpie-run-job >> magpie.sbatch

# Make sbatch with just Hadoop
	echo "Creating magpie.sbatch-hadoop"
	cp templates/magpie-header magpie.sbatch-hadoop
	echo "" >> magpie.sbatch-hadoop
	cat templates/magpie-sbatch >> magpie.sbatch-hadoop
	echo "" >> magpie.sbatch-hadoop
	cat templates/magpie-magpie-customizations >> magpie.sbatch-hadoop
	echo "" >> magpie.sbatch-hadoop
	cat templates/magpie-general-configuration >> magpie.sbatch-hadoop
	echo "" >> magpie.sbatch-hadoop
	cat templates/magpie-hadoop >> magpie.sbatch-hadoop
	echo "" >> magpie.sbatch-hadoop
	cat templates/magpie-hadoop-mode-details >> magpie.sbatch-hadoop
	echo "" >> magpie.sbatch-hadoop
	cat templates/magpie-run-job >> magpie.sbatch-hadoop
	sed -i -e "s/HADOOP_SETUP=no/HADOOP_SETUP=yes/" magpie.sbatch-hadoop

# Make sbatch with Hadoop with UDA
	echo "Creating magpie.sbatch-hadoop-with-uda"
	cp templates/magpie-header magpie.sbatch-hadoop-with-uda
	echo "" >> magpie.sbatch-hadoop-with-uda
	cat templates/magpie-sbatch >> magpie.sbatch-hadoop-with-uda
	echo "" >> magpie.sbatch-hadoop-with-uda
	cat templates/magpie-magpie-customizations >> magpie.sbatch-hadoop-with-uda
	echo "" >> magpie.sbatch-hadoop-with-uda
	cat templates/magpie-general-configuration >> magpie.sbatch-hadoop-with-uda
	echo "" >> magpie.sbatch-hadoop-with-uda
	cat templates/magpie-hadoop >> magpie.sbatch-hadoop-with-uda
	echo "" >> magpie.sbatch-hadoop-with-uda
	cat templates/magpie-hadoop-mode-details >> magpie.sbatch-hadoop-with-uda
	echo "" >> magpie.sbatch-hadoop-with-uda
	cat templates/magpie-uda >> magpie.sbatch-hadoop-with-uda
	echo "" >> magpie.sbatch-hadoop-with-uda
	cat templates/magpie-run-job >> magpie.sbatch-hadoop-with-uda
	sed -i -e "s/HADOOP_SETUP=no/HADOOP_SETUP=yes/" magpie.sbatch-hadoop-with-uda

# Make sbatch with Hadoop and Pig
	echo "Creating magpie.sbatch-hadoop-and-pig"
	cp templates/magpie-header magpie.sbatch-hadoop-and-pig
	echo "" >> magpie.sbatch-hadoop-and-pig
	cat templates/magpie-sbatch >> magpie.sbatch-hadoop-and-pig
	echo "" >> magpie.sbatch-hadoop-and-pig
	cat templates/magpie-magpie-customizations >> magpie.sbatch-hadoop-and-pig
	echo "" >> magpie.sbatch-hadoop-and-pig
	cat templates/magpie-general-configuration >> magpie.sbatch-hadoop-and-pig
	echo "" >> magpie.sbatch-hadoop-and-pig
	cat templates/magpie-hadoop >> magpie.sbatch-hadoop-and-pig
	echo "" >> magpie.sbatch-hadoop-and-pig
	cat templates/magpie-pig >> magpie.sbatch-hadoop-and-pig
	echo "" >> magpie.sbatch-hadoop-and-pig
	cat templates/magpie-run-job >> magpie.sbatch-hadoop-and-pig
	sed -i -e "s/HADOOP_SETUP=no/HADOOP_SETUP=yes/" magpie.sbatch-hadoop-and-pig
	sed -i -e "s/PIG_SETUP=no/PIG_SETUP=yes/" magpie.sbatch-hadoop-and-pig
	sed -i -e "s/MAGPIE_JOB_TYPE=\"hadoop\"/MAGPIE_JOB_TYPE=\"pig\"/" magpie.sbatch-hadoop-and-pig

# Make sbatch with Hadoop and Hbase
	echo "Creating magpie.sbatch-hbase-with-hdfs"
	cp templates/magpie-header magpie.sbatch-hbase-with-hdfs
	echo "" >> magpie.sbatch-hbase-with-hdfs
	cat templates/magpie-sbatch >> magpie.sbatch-hbase-with-hdfs
	echo "" >> magpie.sbatch-hbase-with-hdfs
	cat templates/magpie-magpie-customizations >> magpie.sbatch-hbase-with-hdfs
	echo "" >> magpie.sbatch-hbase-with-hdfs
	cat templates/magpie-general-configuration >> magpie.sbatch-hbase-with-hdfs
	echo "" >> magpie.sbatch-hbase-with-hdfs
	cat templates/magpie-hadoop >> magpie.sbatch-hbase-with-hdfs
	echo "" >> magpie.sbatch-hbase-with-hdfs
	cat templates/magpie-hbase >> magpie.sbatch-hbase-with-hdfs
	echo "" >> magpie.sbatch-hbase-with-hdfs
	cat templates/magpie-zookeeper >> magpie.sbatch-hbase-with-hdfs
	echo "" >> magpie.sbatch-hbase-with-hdfs
	cat templates/magpie-run-job >> magpie.sbatch-hbase-with-hdfs
	sed -i -e "s/HADOOP_SETUP=no/HADOOP_SETUP=yes/" magpie.sbatch-hbase-with-hdfs
	sed -i -e "s/HBASE_SETUP=no/HBASE_SETUP=yes/" magpie.sbatch-hbase-with-hdfs
	sed -i -e "s/ZOOKEEPER_SETUP=no/ZOOKEEPER_SETUP=yes/" magpie.sbatch-hbase-with-hdfs
	sed -i -e "s/MAGPIE_JOB_TYPE=\"hadoop\"/MAGPIE_JOB_TYPE=\"hbase\"/" magpie.sbatch-hbase-with-hdfs
	sed -i -e "s/HADOOP_SETUP_TYPE=\"MR2\"/HADOOP_SETUP_TYPE=\"HDFS2\"/" magpie.sbatch-hbase-with-hdfs

# Make msub with all configuration
	echo "Creating magpie.msub"
	cp templates/magpie-header magpie.msub
	echo "" >> magpie.msub
	cat templates/magpie-msub >> magpie.msub
	echo "" >> magpie.msub
	cat templates/magpie-magpie-customizations >> magpie.msub
	echo "" >> magpie.msub
	cat templates/magpie-general-configuration >> magpie.msub
	echo "" >> magpie.msub
	cat templates/magpie-hadoop >> magpie.msub
	echo "" >> magpie.msub
	cat templates/magpie-hadoop-mode-details >> magpie.msub
	echo "" >> magpie.msub
	cat templates/magpie-uda >> magpie.msub
	echo "" >> magpie.msub
	cat templates/magpie-pig >> magpie.msub
	echo "" >> magpie.msub
	cat templates/magpie-zookeeper >> magpie.msub
	echo "" >> magpie.msub
	cat templates/magpie-run-job >> magpie.msub

# Make msub with just Hadoop
	echo "Creating magpie.msub-hadoop"
	cp templates/magpie-header magpie.msub-hadoop
	echo "" >> magpie.msub-hadoop
	cat templates/magpie-msub >> magpie.msub-hadoop
	echo "" >> magpie.msub-hadoop
	cat templates/magpie-magpie-customizations >> magpie.msub-hadoop
	echo "" >> magpie.msub-hadoop
	cat templates/magpie-general-configuration >> magpie.msub-hadoop
	echo "" >> magpie.msub-hadoop
	cat templates/magpie-hadoop >> magpie.msub-hadoop
	echo "" >> magpie.msub-hadoop
	cat templates/magpie-hadoop-mode-details >> magpie.msub-hadoop
	echo "" >> magpie.msub-hadoop
	cat templates/magpie-run-job >> magpie.msub-hadoop
	sed -i -e "s/HADOOP_SETUP=no/HADOOP_SETUP=yes/" magpie.msub-hadoop

# Make msub with Hadoop with UDA
	echo "Creating magpie.msub-hadoop-with-uda"
	cp templates/magpie-header magpie.msub-hadoop-with-uda
	echo "" >> magpie.msub-hadoop-with-uda
	cat templates/magpie-msub >> magpie.msub-hadoop-with-uda
	echo "" >> magpie.msub-hadoop-with-uda
	cat templates/magpie-magpie-customizations >> magpie.msub-hadoop-with-uda
	echo "" >> magpie.msub-hadoop-with-uda
	cat templates/magpie-general-configuration >> magpie.msub-hadoop-with-uda
	echo "" >> magpie.msub-hadoop-with-uda
	cat templates/magpie-hadoop >> magpie.msub-hadoop-with-uda
	echo "" >> magpie.msub-hadoop-with-uda
	cat templates/magpie-hadoop-mode-details >> magpie.msub-hadoop-with-uda
	echo "" >> magpie.msub-hadoop-with-uda
	cat templates/magpie-uda >> magpie.msub-hadoop-with-uda
	echo "" >> magpie.msub-hadoop-with-uda
	cat templates/magpie-run-job >> magpie.msub-hadoop-with-uda
	sed -i -e "s/HADOOP_SETUP=no/HADOOP_SETUP=yes/" magpie.msub-hadoop-with-uda

# Make msub with Hadoop and Pig
	echo "Creating magpie.msub-hadoop-and-pig"
	cp templates/magpie-header magpie.msub-hadoop-and-pig
	echo "" >> magpie.msub-hadoop-and-pig
	cat templates/magpie-msub >> magpie.msub-hadoop-and-pig
	echo "" >> magpie.msub-hadoop-and-pig
	cat templates/magpie-magpie-customizations >> magpie.msub-hadoop-and-pig
	echo "" >> magpie.msub-hadoop-and-pig
	cat templates/magpie-general-configuration >> magpie.msub-hadoop-and-pig
	echo "" >> magpie.msub-hadoop-and-pig
	cat templates/magpie-hadoop >> magpie.msub-hadoop-and-pig
	echo "" >> magpie.msub-hadoop-and-pig
	cat templates/magpie-pig >> magpie.msub-hadoop-and-pig
	echo "" >> magpie.msub-hadoop-and-pig
	cat templates/magpie-run-job >> magpie.msub-hadoop-and-pig
	sed -i -e "s/HADOOP_SETUP=no/HADOOP_SETUP=yes/" magpie.msub-hadoop-and-pig
	sed -i -e "s/PIG_SETUP=no/PIG_SETUP=yes/" magpie.msub-hadoop-and-pig
	sed -i -e "s/MAGPIE_JOB_TYPE=\"hadoop\"/MAGPIE_JOB_TYPE=\"pig\"/" magpie.msub-hadoop-and-pig

# Make msub with Hadoop and Hbase
	echo "Creating magpie.msub-hbase-with-hdfs"
	cp templates/magpie-header magpie.msub-hbase-with-hdfs
	echo "" >> magpie.msub-hbase-with-hdfs
	cat templates/magpie-msub >> magpie.msub-hbase-with-hdfs
	echo "" >> magpie.msub-hbase-with-hdfs
	cat templates/magpie-magpie-customizations >> magpie.msub-hbase-with-hdfs
	echo "" >> magpie.msub-hbase-with-hdfs
	cat templates/magpie-general-configuration >> magpie.msub-hbase-with-hdfs
	echo "" >> magpie.msub-hbase-with-hdfs
	cat templates/magpie-hadoop >> magpie.msub-hbase-with-hdfs
	echo "" >> magpie.msub-hbase-with-hdfs
	cat templates/magpie-hbase >> magpie.msub-hbase-with-hdfs
	echo "" >> magpie.msub-hbase-with-hdfs
	cat templates/magpie-zookeeper >> magpie.msub-hbase-with-hdfs
	echo "" >> magpie.msub-hbase-with-hdfs
	cat templates/magpie-run-job >> magpie.msub-hbase-with-hdfs
	sed -i -e "s/HADOOP_SETUP=no/HADOOP_SETUP=yes/" magpie.msub-hbase-with-hdfs
	sed -i -e "s/HBASE_SETUP=no/HBASE_SETUP=yes/" magpie.msub-hbase-with-hdfs
	sed -i -e "s/ZOOKEEPER_SETUP=no/ZOOKEEPER_SETUP=yes/" magpie.msub-hbase-with-hdfs
	sed -i -e "s/MAGPIE_JOB_TYPE=\"hadoop\"/MAGPIE_JOB_TYPE=\"hbase\"/" magpie.msub-hbase-with-hdfs
	sed -i -e "s/HADOOP_SETUP_TYPE=\"MR2\"/HADOOP_SETUP_TYPE=\"HDFS2\"/" magpie.msub-hbase-with-hdfs
