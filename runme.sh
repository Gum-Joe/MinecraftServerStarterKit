echo Bukkit Starter Kit 2>&1 | tee -a ./BSKlog.log
echo From http://skits.businesscatalyst.com 2>&1 | tee -a ./BSKlog.log
echo Issues? Vist http://skits.businesscatalyst.com 2>&1 | tee -a ./BSKlog.log
date 2>&1 | tee -a BSKlog.log
echo -------------------------- 2>&1 | tee -a ./BSKlog.log
echo Preparing 2>&1 | tee -a ./BSKlog.log
echo -------------------------- 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log

echo 2>&1 | tee -a ./BSKlog.log
echo Making directorys 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
mkdir -v ./bin 2>&1 | tee -a ./BSKlog.log

mkdir -v ./SupportDownloads 2>&1 | tee -a ./BSKlog.log

mkdir -v ./Bukkit_and_Spigot_Getter 2>&1 | tee -a ./BSKlog.log

mkdir -v ./CraftBukkit_Server 2>&1 | tee -a ./BSKlog.log

mkdir -v ./Spigot_Server 2>&1 | tee -a ./BSKlog.log

mkdir -v ./Executable_Basic_Server 2>&1 | tee -a ./BSKlog.log

mkdir -v ./Java_Basic_Server 2>&1 | tee -a ./BSKlog.log

mkdir -v ./logs 2>&1 | tee -a ./BSKlog.log

mkdir -v ./bin/Checks 2>&1 | tee -a ./BSKlog.log

mkdir -v ./bin/Extracts 2>&1 | tee -a ./BSKlog.log

mkdir -v ./SupportDownloads/Extracts 2>&1 | tee -a ./BSKlog.log

mkdir -v ./bin/plugins 2>&1 | tee -a ./BSKlog.log

echo
echo Downloading Dependences... 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
echo All files saved @ ./SupportDownloads 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log

echo Downloading Support.tar.gz @ skits.businesscatalyst.com/assets/BukkitStarterKit/Support.tar.gz 2>&1 | tee -a ./BSKlog.log
curl "http://skits.businesscatalyst.com/assets/BukkitStarterKit/Support.tar.gz" -o ./SupportDownloads/Support.tar.gz 2>&1 | tee -a ./BSKlog.log
echo
mkdir -v ./SupportDownloads/Extracts/Support 2>&1 | tee -a ./BSKlog.log
cp -pv ./SupportDownloads/Support.tar.gz ./SupportDownloads/Extracts/Support
echo 2>&1 | tee -a ./BSKlog.log

echo Unzipping... 2>&1 | tee -a ./BSKlog.log
tar -xzvf ./SupportDownloads/Extracts/Support/Support.tar.gz -C ./SupportDownloads/Extracts/Support 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log
echo Copying to ./bin/Extracts 2>&1 | tee -a ./BSKlog.log
cp -avr ./SupportDownloads/Extracts/Support ./bin/Extracts 2>&1 | tee -a ./BSKlog.log
echo Copying into bin 2>&1 | tee -a ./BSKlog.log
cp -rpv ./bin/Extracts/Support/* ./bin 2>&1 | tee -a ./BSKlog.log
echo
echo Copying the Starter Kits
cp -v ./bin/StarterKit.sh ./ServerKit.sh
cp -v ./bin/StarterKit_no_bukkit.sh ./ServerKit_no_bukkit.sh

echo Done! 2>&1 | tee -a ./BSKlog.log
echo Running... 2>&1 | tee -a ./BSKlog.log

./bin/StarterKit.sh



cp ./BSKlog.log ./logs/`date +%Y_%m_%d_%H_%M_%S`.log 2>&1 | tee -a ./BSKlog.log
