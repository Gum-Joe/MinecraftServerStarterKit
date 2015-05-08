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
echo Downloading from restrosity...
git clone https://github.com/Gum-Joe/MinecraftServerStarterKit.git -b BETAS ./bin/Extracts/Support


echo Copying into bin 2>&1 | tee -a ./BSKlog.log
cp -rpv ./bin/Extracts/Support/* ./bin 2>&1 | tee -a ./BSKlog.log
echo
echo Copying the Starter Kits
cp -v ./bin/StarterKit.sh ./ServerKit.sh
cp -v ./bin/StarterKit_no_bukkit.sh ./ServerKit_no_bukkit.sh

echo Done! 2>&1 | tee -a ./BSKlog.log
echo Running... 2>&1 | tee -a ./BSKlog.log
read -p "Press enter to contnue...." 2>&1 | tee -a ./BSKlog.log
./bin/StarterKit.sh



cp ./BSKlog.log ./logs/`date +%Y_%m_%d_%H_%M_%S`.log 2>&1 | tee -a ./BSKlog.log
