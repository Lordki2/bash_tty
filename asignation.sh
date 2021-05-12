!/bin/bash
END=2
x=4
for ((i=1;i<=END;i++)); do

        out=`ls -la /dev/serial/by-id | sed -n $x\p | awk '{print $9}'`
        out2=`ls -la /dev/serial/by-id | sed -n $x\p | awk '{print $11}'`
        ardu=`echo $out | cut -d "_" -f 1`
        ardu2=`echo $out2 | cut -d "/" -f 3`
        portard=`echo $ardu2`

        if [ $ardu = "usb-Arduino" ]; then
                echo -e "$ardu por el puerto $portard"
        fi

        if [ $ardu = "usb-u-blox" ]; then
                echo -e "$ardu por el puerto $portard"
        fi


        ((x=$x+1))
done

