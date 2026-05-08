#!/bin/bash
echo "Enter id"
read id
if [ $id -lt 2 ]
    then
        echo "Invalid"
fi
if [ $id -gt 1 ]
    then
        count=0
        for ((i=2;i<id;i++))
        do
            if [ $((id%i)) -eq 0 ]
                then
                    count=$((count+1))
                    #echo "invalid id"
            fi
        done
        if [ $count -gt 0 ]
            then 
                    echo "Invalid"
        elif [ $count -eq 0 ]
            then
                echo "valid"
        fi
else
    echo "enter valid id"
fi
