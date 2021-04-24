echo `df -h / | awk '/\//{ printf("/ %4s/%s \n", $4, $2) }'`

case $BLOCK_BUTTON in
  1) urxvt -e ncdu / ;;
esac


