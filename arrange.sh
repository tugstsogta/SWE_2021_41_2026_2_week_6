#!/bin/bash

lower=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
upper=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

for i in "${!lower[@]}"; do
    l=${lower[i]}
    u=${upper[i]}
    if ls files/[$l$u]* > /dev/null 2>&1; then
        mv files/[$l$u]* $l/
    fi
done