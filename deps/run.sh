#!/bin/sh
VER_NO="v0.0.1a PRE_RELEASE 1b23d3d91a"

echo "daemonize yes" > /redis.conf
echo "dbfilename dump.rdb" >> /redis.conf
echo "dir /redisbackup/" >> /redis.conf
echo "save 30 1" >> /redis.conf

redis-server /redis.conf

echo -e ""
echo -e "\e[36m     _     /   /    /    \e[39m"
echo -e "\e[36m    |_|   /   /    /     \e[39m"
echo -e "\e[36m   [|_|]<    |     |     \e[39m"
echo -e "\e[36m    | |   \   \    \     \e[39m"
echo -e "\e[36m    | |    \   \    \    \e[39m"
echo -e "\e[0m-------- \e[31mbeacon\e[39m ---------\e[0m"
echo -e "\e[0m:: \e[31m$VER_NO\e[39m ::\e[0m"

/beacon $@
