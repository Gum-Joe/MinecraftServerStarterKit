echo Bukkit Starter kit v1.1 BETA build 47 2>&1 | tee -a ./BSKlog.log
echo From http://skits.businesscatalyst.com 2>&1 | tee -a ./BSKlog.log
echo Issues? Vist http://skits.businesscatalyst.com 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
date 2>&1 | tee -a BSKlog.log
echo

cat ./bin/Updates.txt 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
echo ------------------------------ 2>&1 | tee -a ./BSKlog.log
echo PART 1 - Getting Server Files 2>&1 | tee -a ./BSKlog.log
echo ------------------------------ 2>&1 | tee -a ./BSKlog.log

echo Downloading dependences... 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
echo Downloading BuildTools.jar @ https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
curl "https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar" -o ./SupportDownloads/BuildTools.jar | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
cp -v ./SupportDownloads/BuildTools.jar ./bin/BuildTools.jar 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/BuildTools.jar ./Bukkit_and_Spigot_Getter/BuildTools.jar 2>&1 | tee -a ./BSKlog.log

echo 2>&1 | tee -a ./BSKlog.log

echo Starting to get Server files... 2>&1 | tee -a ./BSKlog.log
echo Getting Basic Vanilla Minecraft Server... 2>&1 | tee -a ./BSKlog.log

echo 2>&1 | tee -a ./BSKlog.log

curl -k https://s3.amazonaws.com/Minecraft.Download/versions/1.8.6/minecraft_server.1.8.6.exe -o ./SupportDownloads/minecraft_server.1.8.6.exe 2>&1 | tee -a ./BSKlog.log
cp -v ./SupportDownloads/minecraft_server.1.8.6.exe ./bin/minecraft_server.1.8.6.exe 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/minecraft_server.1.8.*.exe ./minecraft_server.1.8.*.exe 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
echo Getting Bukkit and Spigot...
echo
./bin/bukkit_and_spigot_getter.sh 2>&1 | tee -a ./BSKlog.log
echo
echo Copying Server Files... 2>&1 | tee -a ./BSKlog.log
cp -v ./Bukkit_and_Spigot_Getter/spigot-1.8.*.jar ./bin/spigot-1.8.*.jar 2>&1 | tee -a ./BSKlog.log
cp -v ./Bukkit_and_Spigot_Getter/craftbukkit-1.8.*.jar ./bin/craftbukkit-1.8.*.jar
cp -v ./minecraft_server.1.8.*.exe ./Executable_Basic_Server/minecraft_server.1.8.*.exe
echo 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/spigot-1.8.*.jar ./spigot-1.8.*.jar 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/craftbukkit-1.8.*.jar ./craftbukkit-1.8.*.jar 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
cp -pv ./spigot-1.8.*.jar ./Spigot_Server
cp -pv ./craftbukkit-1.8.*.jar ./CraftBukkit_Server
echo 2>&1 | tee -a ./BSKlog.log

echo Done! 2>&1 | tee -a ./BSKlog.log

echo 2>&1 | tee -a ./BSKlog.log

echo ------------------------------ 2>&1 | tee -a ./BSKlog.log
echo PART 2 - Required Files 2>&1 | tee -a ./BSKlog.log
echo ------------------------------ 2>&1 | tee -a ./BSKlog.log

echo Inserting EULA 2>&1 | tee -a ./BSKlog.log

cp -v ./bin/ServerFiles/eula.txt ./Executable_Basic_Server/eula.txt 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/ServerFiles/eulaBS.txt ./CraftBukkit_Server/eula.txt 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/ServerFiles/eulaBS.txt ./Spigot_Server/eula.txt 2>&1 | tee -a ./BSKlog.log
echo Done! 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log

echo Getting Starters and copying to server folder 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/ServerFiles/startvanilla.sh ./Executable_Basic_Server/start.sh 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/ServerFiles/startbukkit.sh ./CraftBukkit_Server/start.sh 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/ServerFiles/startspigot.sh ./Spigot_Server/start.sh 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log

echo Getting Quick Starters and copying 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/ServerFiles/startvanilla2.sh ./Start_Vanilla_Basic_Server.sh 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/ServerFiles/startbukkit2.sh ./Start_Craft_Bukkit_Server.sh 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/ServerFiles/startspigot2.sh ./Start_Spigot_Server.sh 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log

echo Inserting a server.properties file 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/ServerFiles/server.properties ./Executable_Basic_Server/server.properties 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/ServerFiles/serverBS.properties ./Spigot_Server/server.properties 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/ServerFiles/serverBS.properties ./CraftBukkit_Server/server.properties 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log



echo ------------------------------ 2>&1 | tee -a ./BSKlog.log
echo PART 3 - Clean Up 2>&1 | tee -a ./BSKlog.log
echo ------------------------------ 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
rm -v ./minecraft_server.1.8.3.exe 2>&1 | tee -a ./BSKlog.log
rm -v ./spigot-1.8.3.jar 2>&1 | tee -a ./BSKlog.log
rm -v ./craftbukkit-1.8.3.jar 2>&1 | tee -a ./BSKlog.log
echo Done! It went on in the background 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log


echo -------------------------------------- 2>&1 | tee -a ./BSKlog.log
echo PART 4 - Installing Essential Plugins 2>&1 | tee -a ./BSKlog.log
echo -------------------------------------- 2>&1 | tee -a ./BSKlog.log
mkdir ./SupportDownloads/plugins 2>&1 | tee -a ./BSKlog.log
echo Getting essentials.... 2>&1 | tee -a ./BSKlog.log
echo
echo Downloading Essentials.jar
echo
curl https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/Essentials/target/Essentials-2.x-SNAPSHOT.jar -o ./SupportDownloads/plugins/Essentials.jar 2>&1 | tee -a ./BSKlog.log 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
echo Downloading EssentialsAntiBuild.jar
echo
curl https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsAntiBuild/target/EssentialsAntiBuild-2.x-SNAPSHOT.jar -o ./SupportDownloads/plugins/EssentialsAntiBuild.jar 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
echo Downloading EssentialsChat.jar
echo
curl https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsChat/target/EssentialsChat-2.x-SNAPSHOT.jar -o ./SupportDownloads/plugins/EssentialsChat.jar 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
echo Downloading Essentials GeoIP
echo
curl https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsGeoIP/target/EssentialsGeoIP-2.x-SNAPSHOT.jar -o ./SupportDownloads/plugins/EssentialsGeoIP.jar 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
echo Downloading Essentials Protect
echo
curl https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsProtect/target/EssentialsProtect-2.x-SNAPSHOT.jar -o ./SupportDownloads/plugins/EssentialsProtect.jar 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
echo Downloading Essentials Spawn
echo
curl https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsSpawn/target/EssentialsSpawn-2.x-SNAPSHOT.jar -o ./SupportDownloads/plugins/EssentialsSpawn.jar 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log

echo Getting PermissionsEx... 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
curl http://addons-origin.cursecdn.com/files/855/302/PermissionsEx-1.23.1.jar -o ./SupportDownloads/plugins/PermissionsEx-1.23.1.jar 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log

echo Getting WorldEdit... 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
curl http://addons-origin.cursecdn.com/files/837/363/worldedit-bukkit-6.0.jar -o ./SupportDownloads/plugins/worldedit-bukkit-6.0.jar 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log

echo Getting World Guard... 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
curl http://addons-origin.cursecdn.com/files/776/556/worldguard-5.9.zip -o ./SupportDownloads/plugins/worldguard-5.9.zip 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
unzip ./SupportDownloads/plugins/worldguard-5.9.zip -d ./SupportDownloads/plugins 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log

echo Getting ClearLagg... 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
curl http://addons-origin.cursecdn.com/files/858/962/Clearlag.jar -o ./SupportDownloads/plugins/Clearlag.jar 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
echo Done! 2>&1 | tee -a ./BSKlog.log
echo Making plugins folder... 2>&1 | tee -a ./BSKlog.log
mkdir ./Spigot_Server/plugins 2>&1 | tee -a ./BSKlog.log
mkdir ./CraftBukkit_Server/plugins 2>&1 | tee -a ./BSKlog.log

echo Copying... 2>&1 | tee -a ./BSKlog.log
echo
cp -v ./SupportDownloads/plugins/Essentials.jar ./bin/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./SupportDownloads/plugins/EssentialsAntiBuild.jar ./bin/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./SupportDownloads/plugins/EssentialsChat.jar ./bin/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./SupportDownloads/plugins/EssentialsProtect.jar ./bin/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./SupportDownloads/plugins/EssentialsSpawn.jar ./bin/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./SupportDownloads/plugins/EssentialsGeoIP.jar ./bin/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./SupportDownloads/plugins/WorldGuard.jar ./bin/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./SupportDownloads/plugins/Clearlag.jar ./bin/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./SupportDownloads/plugins/PermissionsEx-1.23.1.jar ./bin/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./SupportDownloads/plugins/worldedit-bukkit-6.0.jar ./bin/plugins 2>&1 | tee -a ./BSKlog.log

echo

cp -v ./bin/plugins/Essentials.jar ./CraftBukkit_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/EssentialsAntiBuild.jar ./CraftBukkit_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/EssentialsChat.jar ./CraftBukkit_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/EssentialsProtect.jar ./CraftBukkit_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/EssentialsSpawn.jar ./CraftBukkit_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/EssentialsGeoIP.jar ./CraftBukkit_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/WorldGuard.jar ./CraftBukkit_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/Clearlag.jar ./CraftBukkit_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/PermissionsEx-1.23.1.jar ./CraftBukkit_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/worldedit-bukkit-6.0.jar ./CraftBukkit_Server/plugins 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/Essentials.jar ./Spigot_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/EssentialsAntiBuild.jar ./Spigot_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/EssentialsChat.jar ./Spigot_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/EssentialsProtect.jar ./Spigot_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/EssentialsSpawn.jar ./Spigot_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/EssentialsGeoIP.jar ./Spigot_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/WorldGuard.jar ./Spigot_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/Clearlag.jar ./Spigot_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/PermissionsEx-1.23.1.jar ./Spigot_Server/plugins 2>&1 | tee -a ./BSKlog.log
cp -v ./bin/plugins/worldedit-bukkit-6.0.jar ./Spigot_Server/plugins 2>&1 | tee -a ./BSKlog.log

echo
echo Checking everything out...
echo
./bin/Checks/Checker.sh 2>&1 | tee -a ./BSKlog.log
echo Done! 2>&1 | tee -a ./BSKlog.log
echo
echo
echo --------------------- 2>&1 | tee -a ./BSKlog.log
echo Finished! Time taken: 2>&1 | tee -a ./BSKlog.log
time 2>&1 | tee -a ./BSKlog.log
echo --------------------- 2>&1 | tee -a ./BSKlog.log
echo
echo
echo To install the plugins, run your server. 2>&1 | tee -a ./BSKlog.log
echo To change the plugins config, change the files localed @ plugins/plugin name  2>&1 | tee -a ./BSKlog.log
echo Finished! 2>&1 | tee -a ./BSKlog.log
echo Now the rest is up to you, read Notes after setup to help fine tune your server. 2>&1 | tee -a ./BSKlog.log
cp ./BSKlog.log ./logs/`date +%Y_%m_%d_%H_%M_%S`.log

