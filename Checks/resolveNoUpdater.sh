echo Error! The Updater could not be found
echo Re downloading...
curl http://skits.businesscatalyst.com/assets/BukkitStarterKit/Resolve/Updater.sh -o ./bin/Checks/Resolves/Updater.sh
cp -v ./bin/Checks/Resolves/Updater.sh ./bin/Updater.sh
echo Checking out...
if [ ! -f ./bin/Updater.sh ]; then
	echo Error! Updater was not found!
	echo Mabye you are not connected to the internet?
	echo Re-trying..
	echo Re downloading...
	curl http://skits.businesscatalyst.com/assets/BukkitStarterKit/Resolve/Updater.sh -o ./bin/Checks/Resolves/Updater.sh
	cp -v ./bin/Checks/Resolves/Updater.sh ./bin/Updater.sh
fi
echo Checking...
if [ ! -f ./bin/Updater.sh ]; then
	echo Error! Updater was not found!
	echo Mabye you are not connected to the internet?
	echo Re-trying..
	echo Re downloading...
	curl http://skits.businesscatalyst.com/assets/BukkitStarterKit/Resolve/Updater.sh -o ./bin/Checks/Resolves/Updater.sh
	cp -v ./bin/Checks/Resolves/Updater.sh ./bin/Updater.sh
fi
echo Done!