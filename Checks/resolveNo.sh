echo Error! The file could not be found
echo Re downloading...
curl http://skits.businesscatalyst.com/assets/BukkitStarterKit/Resolve/file -o ./bin/Checks/Resolves/file
cp -v ./bin/Checks/Resolves/file ./bin/file
cp -v ./bin/file ./file
echo Checking out...
if [ ! -f ./bin/file ]; then
	echo Error! file was not found!
	echo Mabye you are not connected to the internet?
	echo Re-trying..
	echo Re downloading...
	curl http://skits.businesscatalyst.com/assets/BukkitStarterKit/Resolve/file -o ./bin/Checks/Resolves/file
	cp -v ./bin/Checks/Resolves/file ./bin/file
	cp -v ./bin/file ./file
fi
echo Checking...
if [ ! -f ./bin/file ]; then
	echo Error! Updater was not found!
	echo Mabye you are not connected to the internet?
	echo Re-trying..
	echo Re downloading...
	curl http://skits.businesscatalyst.com/assets/BukkitStarterKit/Resolve/file -o ./bin/Checks/Resolves/file
	cp -v ./bin/Checks/Resolves/file ./bin/file
	cp -v ./bin/file ./file
fi
echo Done!