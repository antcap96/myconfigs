
case $BLOCK_BUTTON in
  3) xset dpms force off ;; # right click
  4) xbacklight -inc "2" ;; # scroll up
  5) xbacklight -dec "2" ;; # scroll down, decrease
esac

lum=$(xbacklight -get | awk '{ print int($1+0.5)}')

echo 💡$lum%

