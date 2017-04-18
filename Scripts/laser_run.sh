#/bin/bash
#!/bin/bash
echo "LOADING FIRMWARE"
bash Load_firmware.sh

echo "start the Outrigger DAQ a laser run: ./laser_run <outputfile>"
echo "file will be written at /mnt/FALCON/data/laser_runs/"
if [ -z "$1"]
    then "Provide output file name"
    else 
    FADC_PATH=/root/fadc/fc250b-2.0-server
    $FADC_PATH/efbprun $FADC_PATH/test-fc250b -ei eth1  -d 2 -t 0  -athr 0,0,24  -athr 100,8,9 -athr 0,12,24 -es 100 -re 100 -o /mnt/FALCON/data/laser_runs/$1 -am ffff -aph 2
fi