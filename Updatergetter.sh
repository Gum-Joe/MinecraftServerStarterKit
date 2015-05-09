
echo Bukkit Starter kit v1.1 BETA build 47 2>&1 | tee -a ./Updater.log
echo From http://skits.businesscatalyst.com 2>&1 | tee -a ./Updater.log
echo Issues? Vist http://skits.businesscatalyst.com 2>&1 | tee -a ./Updater.log
date 2>&1 | tee -a BSKlog.log
echo 2>&1 | tee -a ./Updater.log
echo --------------------------------- 2>&1 | tee -a ./Updater.log
echo Preparing to Update... 2>&1 | tee -a ./Updater.log
echo --------------------------------- 2>&1 | tee -a ./Updater.log
echo Updating from restrosity...
cd ./bin/Extracts/Support
git fetch -v 
cd ..
cd ..
cd ..

echo Copying into bin 2>&1 | tee -a ./BSKlog.log
cp -rpv ./bin/Extracts/Support/* ./bin 2>&1 | tee -a ./BSKlog.log
echo
echo Copying the Starter Kits
cp -v ./bin/StarterKit.sh ./ServerKit.sh
cp -v ./bin/StarterKit_no_bukkit.sh ./ServerKit_no_bukkit.sh