#!/system/bin/sh

echo "\033[1;31mit is recommended to do backup system and vendor from twrp:\033[0m"
echo "$div"
echo "Select the location of applications"
echo "$div"
echo "1) System app"
echo "2) System priv-app"
echo "3) System data-app"
echo "4) Vendor app"
echo "5) Vendor data-app"
echo "$div"
echo "Press (y) for exit"
echo "$div"
echo -n "\033[1;32m[CHOICE]:\033[0m"
read m
[ "$m" == "y" ] && echo "bye bye" && exit
echo -ne 'Loading.             (16%)\r'
sleep 0.2
echo -ne 'Loading..            (21%)\r'
sleep 0.2
echo -ne 'Loading...           (33%)\r'
sleep 0.2
echo -ne 'Loading....          (35%)\r'
sleep 0.2
echo -ne 'Loading.....         (41%)\r'
sleep 0.2
echo -ne 'Loading.....         (46%)\r'
sleep 0.2
echo -ne 'Loading......        (51%)\r'
sleep 0.2
echo -ne 'Loading.......       (57%)\r'
sleep 0.2
echo -ne 'Loading........      (60%)\r'
sleep 0.2
echo -ne 'Loading.........     (74%)\r'
sleep 0.2
echo -ne 'Loading..........    (88%)\r'
sleep 0.2
echo -ne 'Loading...........   (100%)\r'
echo "$div"
echo "$div"
mount -o rw,remount /system
mount -o rw,remount /vendor

case $m in
1)
Arbri=(`ls /system/app/`)

len=${#Arbri[@]}

i=0

while [ $i -lt $len ]; do
    sleep 0
    echo "$i - ${Arbri[$i]}"
    let i++
done
echo "$div"
echo "Press (y) for exit"
echo "$div"
echo "Select the application number from the list"
echo "$div"
echo -n "\033[1;32m[CHOICE]:\033[0m"
read app
[ "$app" == "y" ] && echo "bye bye" && exit

app=(`ls /system/app/`)

for i in "${app[$app]}"; do
echo "$div"
echo "You are sure you want to delete $i"
echo "$div"
    
    echo "1) Yes"
    echo "2) No"
    echo "$div"
    echo -n "\033[1;32m[CHOICE]:\033[0m"
   read ty
    case $ty in
   1) rm -rf /system/app/$i
;;
    2) exit
;;
*) echo "Error Type 1 or 2" && exit
;;
esac
    echo "$div"
    echo "Please wait.."
    sleep 1.3
    echo "Deleting $i"
    sleep 1
    echo "Application was deleted successfully"
    done
;;

2)
Arbri=(`ls /system/priv-app/`)

len=${#Arbri[@]}

i=0

while [ $i -lt $len ]; do
    sleep 0
    echo "$i - ${Arbri[$i]}"
    let i++
    done
echo "$div"
echo "Press (y) for exit"
echo "$div"
echo "Select the application number from the list"
echo "$div"
echo -n "\033[1;32m[CHOICE]:\033[0m"
read app
[ "$app" == "y" ] && echo "bye bye" && exit

app=(`ls /system/priv-app/`)

for i in "${app[$app]}"; do

echo "$div"
echo "You are sure you want to delete $i"
echo "$div"
    
    echo "1) Yes"
    echo "2) No"
    echo "$div"
    echo -n "\033[1;32m[CHOICE]:\033[0m"
    
   read ty
    case $ty in
   1) rm -rf /system/priv-app/$i
;;
    2) exit
;;
*) echo "Error Type 1 or 2" && exit
;;
esac
    echo "$div"
    echo "Please wait.."
    sleep 1.3
    echo "Deleting $i"
    sleep 1
    echo "Application was deleted successfully"
    done
;;

3)
Arbri=(`ls /system/data-app/`)

len=${#Arbri[@]}

i=0

while [ $i -lt $len ]; do
    sleep 0
    echo "$i - ${Arbri[$i]}"
    let i++
done
echo "$div"
echo "Press (y) for exit"
echo "$div"
echo "Select the application number from the list"
echo "$div"
echo -n "\033[1;32m[CHOICE]:\033[0m"
read app
[ "$app" == "y" ] && echo "bye bye" && exit

app=(`ls /system/data-app/`)

for i in "${app[$app]}"; do
   
echo "$div"
echo "You are sure you want to delete $i"
echo "$div"
    
    echo "1) Yes"
    echo "2) No"
    echo "$div"
    echo -n "\033[1;32m[CHOICE]:\033[0m"
    
   read ty
    case $ty in
   1) rm -rf /system/data-app/$i
;;
    2) exit
;;
*) echo "Error Type 1 or 2" && exit
;;
esac
    echo "$div"
    echo "Please wait.."
    sleep 1.3
    echo "deleting $i"
    sleep 1
    echo "Application was deleted successfully"
    done
;;

4)
Arbri=(`ls /vendor/app/`)

len=${#Arbri[@]}

i=0

while [ $i -lt $len ]; do
    sleep 0
    echo "$i - ${Arbri[$i]}"
    let i++
done
echo "$div"
echo "Press (y) for exit"
echo "$div"
echo "Select the application number from the list"
echo "$div"
echo -n "\033[1;32m[CHOICE]:\033[0m"
read app
[ "$app" == "y" ] && echo "bye bye" && exit

app=(`ls /vendor/app/`)

for i in "${app[$app]}"; do

echo "$div"
echo "You are sure you want to delete $i"
echo "$div"
    
    echo "1) Yes"
    echo "2) No"
    echo "$div"
    echo -n "\033[1;32m[CHOICE]:\033[0m"
    
   read ty
    case $ty in
   1) rm -rf /vendor/app/$i
;;
    2) exit
;;
*) echo "Error Type 1 or 2" && exit
;;
esac
    echo "$div"
    echo "Please wait.."
    sleep 1.3
    echo "deleting $i"
    sleep 1
    echo "Application was deleted successfully"
    done
;;
5)
mount -o rw,remount /vendor

Arbri=(`ls /vendor/data-app/`)

len=${#Arbri[@]}

i=0

while [ $i -lt $len ]; do
    sleep 0
    echo "$i - ${Arbri[$i]}"
    let i++
done
echo "$div"
echo "Press (y) for exit"
echo "$div"
echo "Select the application number from the list"
echo "$div"
echo -n "\033[1;32m[CHOICE]:\033[0m"
read app
[ "$app" == "y" ] && echo "bye bye" && exit

app=(`ls /vendor/data-app/`)

for i in "${app[$app]}"; do

echo "$div"
echo "You are sure you want to delete $i"
echo "$div"
    
    echo "1) Yes"
    echo "2) No"
    echo "$div"
    echo -n "\033[1;32m[CHOICE]:\033[0m"
    
   read ty
    case $ty in
   1) rm -rf /vendor/data-app/$i
;;
    2) exit
;;
*) echo "Error Type 1 or 2" && exit
;;
esac
    echo "$div"
    echo "Please wait.."
    sleep 1.3
    echo "deleting $i"
    sleep 1
    echo "Application was deleted successfully"
    done
;;
esac
