echo Bukkit Starter kit v1.1 BETA build 47
echo From http://skits.businesscatalyst.com
echo Issues? Vist http://skits.businesscatalyst.com
date

echo Do you really wish to rest the Bukkit starter kit back to how it was before you ran runme.sh?
read -p "Press any key to continue or exit out of this window...."
echo "WARNING! This will remove all of build tools files! Note that Build Tools makes Bukkitn and Spigot"
read -p "Press enter to continue or exit out of this windows if you do not wish to continue!"
echo Removing files....
echo Removing CraftBukkit and Spigot Getter files...
rm -v -rf ./Bukkit_and_Spigot_Getter
echo Now removing this...
rm -v ./bin/BuildToolsreseter.sh
echo Done!