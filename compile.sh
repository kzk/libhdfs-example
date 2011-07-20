export JAVA_HOME="/usr/lib/jvm/java-6-sun/"
export HADOOP_SRC_HOME="./hadoop-hdfs/"
export HADOOP_HOME="/usr/lib/hadoop/" # CDH
export CXXFLAGS="-O2 -g -Wall -I$HADOOP_SRC_HOME/src/c++/libhdfs/ -I$JAVA_HOME/include/ -I$JAVA_HOME/include/linux/"
export LDFLAGS="-L$HADOOP_SRC_HOME/build/c++/lib/ -lhdfs -L$JAVA_HOME/jre/lib/amd64/server/ -ljvm"
export LD_LIBRARY_PATH="$HADOOP_SRC_HOME/build/c++/lib/:$JAVA_HOME/jre/lib/amd64/server/"

g++ $CXXFLAGS $LDFLAGS test.cpp
