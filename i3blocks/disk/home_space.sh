echo `df -h /home | awk '/\//{ printf("/home %4s/%s \n", $4, $2) }'`

case $BLOCK_BUTTON in
  1) urxvt -e ncdu /home/antonio ;;
esac


