echo
echo Getting Bukkit and Spigot... 2>&1 | tee -a ./BSKlog.log
echo Attention! Attention! | tee -a ./BSKlog.log
echo This could take up to 30 minutes! | tee -a ./BSKlog.log
read -p "Get Bukkit and Spigot? (y/n) " RESP
if [ "$RESP" = "y" ]; then
  ./bin/bukkit_sure.sh
else
  echo "Ok, canceled"
fi
echo ----------------- 2>&1 | tee -a ./BSKlog.log
echo Time taken: 2>&1 | tee -a ./BSKlog.log
time 2>&1 | tee -a ./BSKlog.log
echo ----------------- 2>&1 | tee -a ./BSKlog.log
echo 2>&1 | tee -a ./BSKlog.log