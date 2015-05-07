read -p "Are you sure, rember, this could take up to 30 minutes? (y/n) " RESP
if [ "$RESP" = "y" ]; then
  ./bin/bukkit_continue.sh
else
  echo "Ok, canceled"
fi