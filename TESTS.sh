echo -------------------------
echo  T E S T S
echo -------------------------

echo
echo Creating Test dir
mkdir -v ./"Not for Support - Other"/TESTS/"Test `date +%Y_%m_%d_%H_%M_%S`"
cp -pv runme.sh ./"Not for Support - Other"/TESTS/"Test `date +%Y_%m_%d_%H_%M_%S`"
echo
echo Testing...
echo
cd "Not for Support - Other/TESTS/Test `date +%Y_%m_%d_%H_%M_%S`"
echo $PWD
read -p "Correct?"
./runme.sh

echo "Checking if it was successful..."
echo Checking out Files...
mkdir ./bin/Checks/Resolves

if [ ! -f ./Updater.sh ]; then
	./bin/Checks/resolveNoUpdater.sh
fi
echo "Checked out files (1/52)"


if [ ! -f ./Start_Vanilla_Basic_Server.sh ]; then
	./bin/Checks/resolveNoVanillaQuickStarter.sh
fi
echo "Checked out files (2/52)"


if [ ! -f ./Start_Craft_Bukkit_Server.sh ]; then
	./bin/Checks/resolveNoCraftBukkitQuickStarter.sh
fi
echo "Checked out files (3/52)"


if [ ! -f ./Start_Spigot_Server.sh ]; then
	./bin/Checks/resolveNoSpigotQuickStarter.sh
fi
echo "Checked out files (4/52)"
echo
echo "Checking out ./bin"
echo

if [ ! -f ./bin/BuildTools.jar ]; then
	./bin/Checks/resolveNoBuildTools.sh
fi
echo "Checked out files (4.5/52)"


if [ ! -f ./Bukkit_and_Spigot_Getter/BuildTools.jar ]; then
	./bin/Checks/resolveNoBuildTools.sh
fi
echo "Checked out files (5/52)"


if [ ! -f ./bin/BuildToolsrester.sh ]; then
	./bin/Checks/resolveNoBuildReseter.sh
fi
echo "Checked out files (6/52)"


if [ ! -f ./bin/bukkit_and_spigot_getter.sh ]; then
	./bin/Checks/resolveNoBukkitGetter.sh
fi
echo "Checked out files (7/52)"


if [ ! -f ./bin/minecraft_server.1.8.3.exe ]; then
	./bin/Checks/resolveNoBasicExeServer.sh
fi
echo "Checked out files (8/52)"


if [ ! -f ./bin/StarterKit_no_bukkit.sh ]; then
	./bin/Checks/resolveNoStarterKitWithoutBukkit.sh
fi
echo "Checked out files (9/52)"


if [ ! -f ./bin/Updater_no_bin.sh ]; then
	./bin/Checks/resolveNoUpdaternotforbin.sh
fi
echo "Checked out files (10/52)"
echo

if [ ! -f ./bin/Updatergetter.sh ]; then
	./bin/Checks/resolveNoBukkitGetter.sh
fi
echo "Checked out files (11/52)"
echo
echo Checking out ./bin/plugins
echo

if [ ! -f ./bin/plugins/Clearlag.jar ]; then
	./bin/Checks/resolveNoClearlag.sh
fi
echo "Checked out files (12/52)"


if [ ! -f ./bin/plugins/Essentials.jar ]; then
	./bin/Checks/resolveNoEssentials.sh
fi
echo "Checked out files (13/52)"


if [ ! -f ./bin/plugins/EssentialsAntiBuild.jar ]; then
	./bin/Checks/resolveNoEssentialsAntiBuild.sh
fi
echo "Checked out files (14/52)"


if [ ! -f ./bin/plugins/EssentialsChat.jar ]; then
	./bin/Checks/resolveNoEssentialsChat.sh
fi
echo "Checked out files (15/52)"


if [ ! -f ./bin/plugins/EssentialsGeoIP.jar ]; then
	./bin/Checks/resolveNoEssentialsGeoIP.sh
fi
echo "Checked out files (16/52)"


if [ ! -f ./bin/plugins/EssentialsProtect.jar ]; then
	./bin/Checks/resolveNoEssentialsProtect.sh
fi
echo "Checked out files (18/52)"


if [ ! -f ./bin/plugins/EssentialsSpawn.jar ]; then
	./bin/Checks/resolveNoEssentialsSpawn.sh
fi
echo "Checked out files (18/52)"


if [ ! -f ./bin/plugins/PermissionsEx-1.23.1.jar ]; then
	./bin/Checks/resolveNoPermissionsEx.sh
fi
echo "Checked out files (19/52)"


if [ ! -f ./bin/plugins/worldedit-bukkit-6.0.jar ]; then
	./bin/Checks/resolveNoWorldEdit.sh
fi
echo "Checked out files (20/52)"


if [ ! -f ./bin/plugins/WorldGuard.jar ]; then
	./bin/Checks/resolveNoWorldGuard.sh
fi
echo "Checked out files (21/52)"

echo
echo Checking out Server Files...
if [ ! -f ./Executable_Basic_Server/eula.txt ]; then
	./bin/Checks/resolveNoVanillaeula.sh
fi
echo "Checked out files (22/52)"

if [ ! -f ./Executable_Basic_Server/server.properties ]; then
	./bin/Checks/resolveNoVanillaServerProperties.sh
fi
echo "Checked out files (23/52)"

if [ ! -f ./Executable_Basic_Server/minecraft_server.1.8.3.exe ]; then
	./bin/Checks/resolveNoVanillaServer.sh
fi
echo "Checked out files (24/52)"

if [ ! -f ./Executable_Basic_Server/start.sh ]; then
	./bin/Checks/resolveNoVanillaStarter.sh
fi
echo "Checked out files (25/52)"

if [ ! -f ./CraftBukkit_Server/server.properties ]; then
	./bin/Checks/resolveNoBukkitProperties.sh
fi
echo "Checked out files (26/52)"

if [ ! -f ./CraftBukkit_Server/eula.txt ]; then
	./bin/Checks/resolveNoBukkitEula.sh
fi
echo "Checked out files (28/52)"


if [ ! -f ./CraftBukkit_Server/start.sh ]; then
	./bin/Checks/resolveNoBukkitStarter.sh
fi
echo "Checked out files (28/52)"
if [ ! -f ./CraftBukkit_Server/plugins/Clearlag.jar ]; then
	./bin/Checks/resolveNoClearlag.sh
fi
echo "Checked out files (28/52)"


if [ ! -f ./CraftBukkit_Server/plugins/Essentials.jar ]; then
	./bin/Checks/resolveNoEssentials.sh
fi
echo "Checked out files (29/52)"


if [ ! -f ./CraftBukkit_Server/plugins/EssentialsAntiBuild.jar ]; then
	./bin/Checks/resolveNoEssentialsAntiBuild.sh
fi
echo "Checked out files (30/52)"


if [ ! -f ./CraftBukkit_Server/plugins/EssentialsChat.jar ]; then
	./bin/Checks/resolveNoEssentialsChat.sh
fi
echo "Checked out files (31/52)"


if [ ! -f ./CraftBukkit_Server/plugins/EssentialsGeoIP.jar ]; then
	./bin/Checks/resolveNoEssentialsGeoIP.sh
fi
echo "Checked out files (32/52)"


if [ ! -f ./CraftBukkit_Server/plugins/EssentialsProtect.jar ]; then
	./bin/Checks/resolveNoEssentialsProtect.sh
fi
echo "Checked out files (33/52)"


if [ ! -f ./CraftBukkit_Server/plugins/EssentialsSpawn.jar ]; then
	./bin/Checks/resolveNoEssentialsSpawn.sh
fi
echo "Checked out files (34/52)"


if [ ! -f ./CraftBukkit_Server/plugins/PermissionsEx-1.23.1.jar ]; then
	./bin/Checks/resolveNoPermissionsEx.sh
fi
echo "Checked out files (35/52)"


if [ ! -f ./CraftBukkit_Server/plugins/worldedit-bukkit-6.0.jar ]; then
	./bin/Checks/resolveNoWorldEdit.sh
fi
echo "Checked out files (36/52)"


if [ ! -f ./CraftBukkit_Server/plugins/WorldGuard.jar ]; then
	./bin/Checks/resolveNoWorldGuard.sh
fi
echo "Checked out files (38/52)"

if [ ! -f ./CraftBukkit_Server/craftbukkit-1.8.3.jar ]; then
	./bin/Checks/resolveNoCraftBukkitandSpigot.sh
fi
echo "Checked out files (38/52)"

########################################

if [ ! -f ./Spigot_Server/server.properties ]; then
	./bin/Checks/resolveNoBukkitProperties.sh
fi
echo "Checked out files (39/52)"

if [ ! -f ./Spigot_Server/eula.txt ]; then
	./bin/Checks/resolveNoBukkitEula.sh
fi
echo "Checked out files (40/52)"


if [ ! -f ./Spigot_Server/start.sh ]; then
	./bin/Checks/resolveNoBukkitStarter.sh
fi
echo "Checked out files (41/52)"
if [ ! -f ./Spigot_Server/plugins/Clearlag.jar ]; then
	./bin/Checks/resolveNoClearlag.sh
fi
echo "Checked out files (42/52)"


if [ ! -f ./Spigot_Server/plugins/Essentials.jar ]; then
	./bin/Checks/resolveNoEssentials.sh
fi
echo "Checked out files (43/52)"


if [ ! -f ./Spigot_Server/plugins/EssentialsAntiBuild.jar ]; then
	./bin/Checks/resolveNoEssentialsAntiBuild.sh
fi
echo "Checked out files (44/52)"


if [ ! -f ./Spigot_Server/plugins/EssentialsChat.jar ]; then
	./bin/Checks/resolveNoEssentialsChat.sh
fi
echo "Checked out files (45/52)"


if [ ! -f ./Spigot_Server/plugins/EssentialsGeoIP.jar ]; then
	./bin/Checks/resolveNoEssentialsGeoIP.sh
fi
echo "Checked out files (46/52)"


if [ ! -f ./Spigot_Server/plugins/EssentialsProtect.jar ]; then
	./bin/Checks/resolveNoEssentialsProtect.sh
fi
echo "Checked out files (48/52)"


if [ ! -f ./Spigot_Server/plugins/EssentialsSpawn.jar ]; then
	./bin/Checks/resolveNoEssentialsSpawn.sh
fi
echo "Checked out files (48/52)"


if [ ! -f ./Spigot_Server/plugins/PermissionsEx-1.23.1.jar ]; then
	./bin/Checks/resolveNoPermissionsEx.sh
fi
echo "Checked out files (49/52)"


if [ ! -f ./Spigot_Server/plugins/worldedit-bukkit-6.0.jar ]; then
	./bin/Checks/resolveNoWorldEdit.sh
fi
echo "Checked out files (50/52)"


if [ ! -f ./Spigot_Server/plugins/WorldGuard.jar ]; then
	./bin/Checks/resolveNoWorldGuard.sh
fi
echo "Checked out files (51/52)"

if [ ! -f ./Spigot_Server/spigot-1.8.3.jar ]; then
	./bin/Checks/resolveNoCraftBukkitandSpigot.sh
fi
echo "Checked out files (52/52)"
echo Success!