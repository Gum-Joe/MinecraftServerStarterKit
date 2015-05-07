echo Bukkit Starter kit v1.1 BETA build 47 FURIOUS DESTROYER
echo From http://skits.businesscatalyst.com
echo Issues? Vist http://skits.businesscatalyst.com
date

echo Do you really wish to rest the Bukkit starter kit back to how it was before you ran runme.sh?
read -p "Press any key to continue or exit out of this window...."
echo "WARNING! Doing this will remove all the Kits files and leave you with runme.sh only!"
read -p "Press enter to continue or exit out of this windows if you do not wish to continue!"
echo FINAL WANING! This will remove all the servers data! Backup this data up in a folder other then Backup!
echo Removing all files....
echo Removing local files in dirctory...
echo
rm -v BSKlog.log
rm -v Updater.sh
echo
echo Removing Updater Backup...
echo
rm -v -rf Backup
echo
echo Removing SupportDownloads...
echo
rm -v -rf SupportDownloads
echo
echo Removing Servers...
echo
rm -v -rf Basic_Minecraft_Server
rm -v -rf CraftBukkit_Server
rm -v -rf Spigot_Server
echo
echo Removing ./bin
rm -v -rf ./bin
echo
echo Removing CraftBukkit and Spigot Getter files...
rm -v -rf ./Bukkit_and_Spigot_Getter

echo Done!