echo "Error! BuildTools.jar (Bukkit and Spigot Maker) could not be found"
echo Re downloading...
curl "https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar" -o ./bin/Checks/Resolves/BuildTools.jar
cp -v ./bin/Checks/Resolves/BuildTools.jar ./bin/BuildTools.jar
cp -v ./bin/BuildTools.jar ./Bukkit_and_Spigot_Getter/BuildTools.jar
echo Checking out...
if [ ! -f ./bin/BuildTools.jar ]; then
	echo Error! BuildTools.jar was not found!
	echo Mabye you are not connected to the internet?
	echo Re-trying..
	echo Re downloading...
	curl "https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar" -o ./bin/Checks/Resolves/BuildTools.jar
	cp -v ./bin/Checks/Resolves/BuildTools.jar ./bin/BuildTools.jar
	cp -v ./bin/BuildTools.jar ./Bukkit_and_Spigot_Getter/BuildTools.jar
fi
echo Checking...
if [ ! -f ./bin/BuildTools.jar ]; then
	echo Error! Updater was not found!
	echo Mabye you are not connected to the internet?
	echo Re-trying..
	echo Re downloading...
	curl "https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar" -o ./bin/Checks/Resolves/BuildTools.jar
	cp -v ./bin/Checks/Resolves/BuildTools.jar ./bin/BuildTools.jar
	cp -v ./bin/BuildTools.jar ./Bukkit_and_Spigot_Getter/BuildTools.jar
fi
echo Done!