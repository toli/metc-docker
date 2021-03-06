#!/bin/sh

##
## This startup file is automatically generated by tools/scripts/createScript.pl
##

. ../setEnv.sh

APPLICATION_DIR=ors

THE_CLASSPATH=./conf
for file in `ls -1 ./lib/*.jar`
do
    THE_CLASSPATH=${THE_CLASSPATH}:${file}
done

java -Xms384m -Xmx600m -XX:MaxPermSize=512m -server -Dorg.marketcetera.appDir=${METC_HOME}/${APPLICATION_DIR}\
 -cp "${THE_CLASSPATH}"\
 org.marketcetera.ors.OrderRoutingSystem $*
