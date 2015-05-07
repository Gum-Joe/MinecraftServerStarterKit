
echo Bukkit Starter kit v1.1 BETA build 47 2>&1 | tee -a ./Updater.log
echo From http://skits.businesscatalyst.com 2>&1 | tee -a ./Updater.log
echo Issues? Vist http://skits.businesscatalyst.com 2>&1 | tee -a ./Updater.log
date 2>&1 | tee -a BSKlog.log
echo 2>&1 | tee -a ./Updater.log
echo --------------------------------- 2>&1 | tee -a ./Updater.log
echo Preparing to Update... 2>&1 | tee -a ./Updater.log
echo --------------------------------- 2>&1 | tee -a ./Updater.log
echo Downloading Updater @ http://skits.businesscatalyst.com/updater.sh 2>&1 | tee -a ./Updater.log
curl http://skits.businesscatalyst.com/assets/BukkitStarterKit/updater.sh -o ./SupportDownloads/Updater.sh 2>&1 | tee -a ./Updater.log
cp -v ./SupportDownloads/Updater.sh ./bin/Updater.sh 2>&1 | tee -a ./Updater.log
./bin/Updater.sh 2>&1 | tee -a ./Updater.log
cp ./Updater.log ./logs/"Updater`date +%Y_%m_%d_%H_%M_%S`.log"