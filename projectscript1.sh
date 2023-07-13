o -n "Enter IP address: "
read ip
echo -n "How many IP addresses do you need: "
read count
First3octets=$(echo $ip | cut -d. -f1-3)
Lastoctet=$(echo $ip | cut -d. -f4)
for ((i=0; i< $count;i++))
do
	        #echo $i
		        ip2ping=$First3octets.$Lastoctet
			        echo "Current ip being pinged is: $ip2ping"
				        ping -W 1 -c 1 $ip2ping > /dev/null
					        if [ $? -eq 0 ]
							        then
									                echo Congratulations! It is reachable
											                echo -n "Average of 5 Ping Counts is: "; ping -c 5 $ip2ping | grep rtt*
													                echo -n "DNS Name Resolution is: "; nslookup $ip2ping | tail -4 | awk -F "=" '{prin
															t$2}'
															        else
																	                echo The ip is not pingable
																			        fi
																				        Lastoctet=$(( $Lastoctet +1))
																				done
																				exit 0

