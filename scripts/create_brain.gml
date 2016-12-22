creature_id=argument0

creature_id.layer1_size=8; //Hue and Yums% for all 3 eyes and 1 const
creature_id.layer2_size=10; //Hidden Layer
creature_id.layer3_size=6; //Direction, Speed, Eating, Giving Birth, Body color



for (i=0; i<creature_id.layer1_size; i++){
    creature_id.layer1[i]=0;
}

for (i=0; i<creature_id.layer2_size; i++){
    creature_id.layer2[i]=0;
}

for (i=0; i<creature_id.layer3_size; i++){
    creature_id.layer3[i]=0;
}

for (i=0; i<creature_id.layer1_size; i++){
    for (j=0; j<creature_id.layer2_size; j++){
        if (irandom(3) == 2){
            creature_id.WL12[i,j]=random_range(-5,5);
        }else{
            creature_id.WL12[i,j]=0.000001;
        }
    }
}

for (i=0; i<creature_id.layer2_size; i++){
    for (j=0; j<creature_id.layer3_size; j++){
        if (irandom(3) == 2){
            creature_id.WL23[i,j]=random_range(-5,5);
        }else{
            creature_id.WL23[i,j]=0.000001;
        }
    }
}
