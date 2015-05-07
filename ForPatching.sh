mkdir ./"1.1.50 to 1.1.51"
mkdir ./"1.1.50 to 1.1.51"/old
mkdir ./"1.1.50 to 1.1.51"/new
mkdir ./"1.1.50 to 1.1.51"/Patches

cp -pv ./*50/*.sh ./"1.1.50 to 1.1.51"/old
cp -pv ./*51/*.sh ./"1.1.50 to 1.1.51"/new

echo Patching...

diff -u ./"1.1.50 to 1.1.51"/old/BuildToolsrester.sh ./"1.1.50 to 1.1.51"/new/BuildToolsrester.sh > ./"1.1.50 to 1.1.51"/Patches/BuildToolsresterPatch.patch
diff -u ./"1.1.50 to 1.1.51"/old/bukkit_and_spigot_getter.sh ./"1.1.50 to 1.1.51"/new/bukkit_and_spigot_getter.sh > ./"1.1.50 to 1.1.51"/Patches/bukkit_and_spigot_getterPatch.patch
diff -u ./"1.1.50 to 1.1.51"/old/runme.sh ./"1.1.50 to 1.1.51"/new/runme.sh > ./"1.1.50 to 1.1.51"/Patches/runmePatch.patch
diff -u ./"1.1.50 to 1.1.51"/old/StarterKit.sh ./"1.1.50 to 1.1.51"/new/StarterKit.sh > ./"1.1.50 to 1.1.51"/Patches/StarterKitPatch.patch
diff -u ./"1.1.50 to 1.1.51"/old/StarterKit_no_bukkit.sh ./"1.1.50 to 1.1.51"/new/StarterKit_no_bukkit.sh > ./"1.1.50 to 1.1.51"/Patches/StarterKit_no_bukkitPatch.patch
diff -u ./"1.1.50 to 1.1.51"/old/Updater_no_bin.sh ./"1.1.50 to 1.1.51"/new/Updater_no_bin.sh > ./"1.1.50 to 1.1.51"/Patches/Updater_no_binPatch.patch
diff -u ./"1.1.50 to 1.1.51"/old/Updatergetter.sh./"1.1.50 to 1.1.51"/new/Updatergetter.sh > ./"1.1.50 to 1.1.51"/Patches/UpdatergetterPatch.patch
diff -u ./"1.1.50 to 1.1.51"/old/Start_Craft_Bukkit_Server.sh ./"1.1.50 to 1.1.51"/new/Start_Craft_Bukkit_Server.sh > ./"1.1.50 to 1.1.51"/Patches/Start_Craft_Bukkit_ServerPatch.patch
diff -u ./"1.1.50 to 1.1.51"/old/Start_Spigot_Server.sh ./"1.1.50 to 1.1.51"/new/Start_Spigot_Server.sh > ./"1.1.50 to 1.1.51"/Patches/Start_Spigot_ServerPatch.patch
diff -u ./"1.1.50 to 1.1.51"/old/Start_Vanilla_Basic_Server.sh ./"1.1.50 to 1.1.51"/new/Start_Vanilla_Basic_Server.sh > ./"1.1.50 to 1.1.51"/Patches/Start_Vanilla_Basic_ServerPatch.patch
 
echo
echo
echo
echo
echo
echo

echo Compiling into tar archieve
tar -czvf ./"1.1.50 to 1.1.51"/Patches.tar ./"1.1.50 to 1.1.51"/Patches          