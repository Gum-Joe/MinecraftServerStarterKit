echo Diffing test file...
mkdir ./patches
diff -u ./runme.sh ./travis-runme.sh > patches/patchone.patch
diff -u ./StarterKit.sh ./travis-kits.sh > patches/patch.patch
echo Applying Patches...
patch -b ./runme.sh ./patches/patchone.patch
patch -b ./StarterKit.sh ./patches/patch.patch
