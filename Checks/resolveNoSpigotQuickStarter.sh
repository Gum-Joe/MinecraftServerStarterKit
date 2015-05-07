echo Error! The Start_Spigoit_Server.sh could not be found
echo Re downloading...
curl http://skits.businesscatalyst.com/assets/BukkitStarterKit/Resolve/Start_Spigoit_Server.sh -o ./bin/Checks/Resolves/Start_Spigoit_Server.sh
cp -v ./bin/Checks/Resolves/Start_Spigoit_Server.sh ./bin/Start_Spigoit_Server.sh
cp -v ./bin/Start_Spigoit_Server.sh ./Start_Spigoit_Server.sh
echo Checking out...
if [ ! -f ./bin/Start_Spigoit_Server.sh ]; then
	echo Error! Start_Spigoit_Server.sh was not found!
	echo Mabye you are not connected to the internet?
	echo Re-trying..
	echo Re downloading...
	curl http://skits.businesscatalyst.com/assets/BukkitStarterKit/Resolve/Start_Spigoit_Server.sh -o ./bin/Checks/Resolves/Start_Spigoit_Server.sh
	cp -v ./bin/Checks/Resolves/Start_Spigoit_Server.sh ./bin/Start_Spigoit_Server.sh
	cp -v ./bin/Start_Spigoit_Server.sh ./Start_Spigoit_Server.sh
fi
echo Checking...
if [ ! -f ./bin/Start_Spigoit_Server.sh ]; then
	echo Error! Updater was not found!
	echo Mabye you are not connected to the internet?
	echo Re-trying..
	echo Re downloading...
	curl http://skits.businesscatalyst.com/assets/BukkitStarterKit/Resolve/Start_Spigoit_Server.sh -o ./bin/Checks/Resolves/Start_Spigoit_Server.sh
	cp -v ./bin/Checks/Resolves/Start_Spigoit_Server.sh ./bin/Start_Spigoit_Server.sh
	cp -v ./bin/Start_Spigoit_Server.sh ./Start_Spigoit_Server.sh
fi
echo Done!