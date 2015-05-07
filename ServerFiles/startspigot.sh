echo Starting the Server...
echo Ops:
cat ./ops.json
echo Bloacked people:
cat banned-players.json
sed -n '8p' < server.properties
echo 1 is creative, 0 is survival
sed -n '11p' < server.properties
echo 0 is Peacuful, 1 is easy, 2 is normal etc
# where 2p is, replace with line to read
java -Xmx1024M -Xms1024M -jar spigot-1.8.3.jar -o true
echo Backing up
mkdir Backup
mkdir Backup/`date +%y%m%d`
cd ..
cp -avr ./Spigot_Server ./Spigot_Server/Backup/`date +%y%m%d`
cd Spigot_Server
echo Done!