#!/bin/sh -e

IMAGE="/home/paul/.config/i3/lock/locked.png"
scrot "$IMAGE"
FONT="$(convert -list font | awk "{ a[NR] = \$2 } /family: $(fc-match sans -f "%{family}\n")/ { print a[NR-1]; exit }")"
TEXT="type password to unlock"
NUM="$((1 + RANDOM % 4))"
case "$NUM" in
    1 ) TEXT="ι ĸɴow ĸυɴɢ ғυ";;
    2 ) TEXT="Type password to unlock" ;;
    3 ) TEXT="I'll be back" ;;
    4 ) TEXT="Nuclear launch detected." ;;
    * ) TEXT="Fatal Errooorooroooooo..." ;;

esac
VALUE="60"   #brightness value to compare to                              
COLOR=$(convert "$IMAGE" -gravity center -crop 100x100+0+0 +repage -colorspace hsb \
		-resize 1x1 txt:- | awk -F '[%$]' 'NR==2{gsub(",",""); printf "%.0f\n", $(NF-1)}');

if [ "$COLOR" -gt "$VALUE" ]; then
    BW="blue"
else
    BW="darkorange"

fi

ICON="/home/paul/.config/i3/lock/locked.png"

convert  "$IMAGE" -blur 0x5   "$IMAGE"

convert "$IMAGE" -filter Gaussian -resize 50% -define filter:sigma=2.5 -r\
esize 200%  "$IMAGE"
#Adding the text and the icons...
#convert "$IMAGE" -font "$FONT" -pointsize 26 -fill "$BW" -gravity center -annotate +0+160 "$TEXT" "$IMAGE"
convert "$IMAGE" -font "$FONT" -pointsize 26 -fill "$BW" -gravity center  -annotate +0+160 "$TEXT"  "$ICON" -gravity center -composite "$IMAGE"

#if ! i3lock -n "${PARAM[@]}" -i "$IMAGE" > /dev/null 2>&1; then
i3lock -n -i "$IMAGE" #--insidevercolor=00000088 --insidewrongcolor=00000088 --insidecolor=0e222200 --ringvercolor=d55c0a88 --ringwrongcolor=d55c0aff --ringcolor=d55c0a88 --linecolor=000000ff --keyhlcolor=d36900ff --bshlcolor=cda600ff --indicator
