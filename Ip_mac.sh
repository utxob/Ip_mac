#!/bin/bash

banner(){
echo "###############################"
echo "#                             #"
echo "#        U T X O B            #"
echo "#                             #"
echo "###############################"
}
message(){
echo "[1] show Ip address"
echo "[2] show MAC address"
echo "[0] exit "
}
main(){
read -p "select Your option : " option

if [ $option -eq 1 ]
then
        echo "Your ip: " $(hostname -I)

elif [ $option -eq 2 ]
then
        echo "Your MAC: " $(ip link show eth0 | grep link/ether | awk '{print $2}')

elif [ $option -eq 0 ]
then
        exit

else
        echo "Invalid option"
fi
}



for (( ; ; ))
do 
banner 
message 
main
done
