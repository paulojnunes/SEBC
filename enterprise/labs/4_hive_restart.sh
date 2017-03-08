#!/bin/bash
echo "Stopping Hive..."

OUTPUT=`curl -u paulojnunes:cloudera -X POST http://xpandsebc1.westeurope.cloudapp.azure.com:7180/api/v2/clusters/paulojnunes/services/hive/commands/stop`
OUTPUT=$OUTPUT | grep '"success" : false,'

if [ -z "$OUTPUT" ];
	then
		for (( ; ; ))
		do

		OUTPUT=`curl -u paulojnunes:cloudera -X GET http://xpandsebc1.westeurope.cloudapp.azure.com:7180/api/v2/clusters/paulojnunes/services/hive/ | grep serviceState | awk 'NF{gsub("\"","");gsub(",",""); print $NF }'`
		OUTPUT=$OUTPUT | tail -1
		if [ "$OUTPUT" == "STOPPED" ]; then
  			echo "Hive has stopped."
  			break
		fi
  		sleep 5
		done

		curl -u paulojnunes:cloudera -X POST http://xpandsebc1.westeurope.cloudapp.azure.com:7180/api/v2/clusters/paulojnunes/services/hive/commands/start

		echo "Hive has started."
	else
		echo "Hive is already stopped or starting."
fi