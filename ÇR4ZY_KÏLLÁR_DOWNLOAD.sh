
bar_width=20
filesize=5286  # MB
download_speed=101  # MBps
filename="ÇR4ZY_KÏLLÁR.sh"
device_name=$(getprop ro.product.model)

clear
sleep 0.5
for i in {1..3}; do
    for dots in "." ".." "..."; do
        echo -ne "Executing Command$dots   \r"
        sleep 0.5
    done
done

clear

# Header
echo -e "\e[35m        ÇR4ZY KÏLLÁR VIRUS BY xXFinFin99872Xx😈\e[0m"
sleep 4
echo ""
echo -e "\e[35mAttacking Device $device_name ...\e[0m"
sleep 3
echo "Executing script..."
sleep 2

total=$filesize
for i in $(seq 1 100); do
    percent=$i
    filled=$((i * bar_width / 100))
    empty=$((bar_width - filled))
    downloaded=$((filesize * i / 100))

    bar=$(printf "%0.s=" $(seq 1 $filled))
    bar+=">"
    bar+=$(printf "%0.s " $(seq 1 $empty))

    scroll_idx=$((i % (${#filename} - 5)))
    scroll_name="${filename:scroll_idx:5}"

    printf "\r%s |[%s]| %3d%% %5dMB %dMB/s" "$scroll_name" "$bar" "$percent" "$downloaded" "$download_speed"
    sleep 0.5
done

echo "Download Completed."
sleep 1.5

for i in {1..2}; do
    for dots in "." ".." "..."; do
        echo -ne "executing '$filename'$dots   \r"
        sleep 1
    done
done
clear
sleep 3.0

echo "Nungguin ya... XD"
