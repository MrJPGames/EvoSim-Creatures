parent_id=argument0;
child_id=argument1;

child_id.layer1_size=parent_id.layer1_size; //Hue and Yums% for all 3 eyes and 1 const
child_id.layer2_size=parent_id.layer2_size; //Hidden Layer
child_id.layer3_size=parent_id.layer3_size; //Direction, Speed, Eating, Giving Birth


//Cloning
for (i=0; i<child_id.layer1_size; i++){
    child_id.layer1[i]=parent_id.layer1[i];
}

for (i=0; i<child_id.layer2_size; i++){
    child_id.layer2[i]=parent_id.layer2[i];
}

for (i=0; i<child_id.layer3_size; i++){
    child_id.layer3[i]=parent_id.layer3[i];
}

for (i=0; i<child_id.layer1_size; i++){
    for (j=0; j<child_id.layer2_size; j++){
        child_id.WL12[i,j]=parent_id.WL12[i,j];
    }
}

for (i=0; i<child_id.layer2_size; i++){
    for (j=0; j<child_id.layer3_size; j++){
        child_id.WL23[i,j]=parent_id.WL23[i,j];
    }
}

//Mutating (1/100 no mutations at all)
if (irandom(100) != 2){
    for (i=0; i<child_id.layer1_size; i++){
        for (j=0; j<child_id.layer2_size; j++){
            if (irandom(child_id.layer2_size) == 1 && child_id.WL12[i,j] != 0){
                child_id.WL12[i,j]+=random_range(-0.2,0.2);
            }
            //Do random BIG mutation 1/100 of the normal mutation rate
            if (irandom(child_id.layer2_size*100) == 1){
                child_id.WL12[i,j]+=random_range(-5,5);
                big_mutations+=1;           
            } 
        }
    }
    
    for (i=0; i<child_id.layer2_size; i++){
        for (j=0; j<child_id.layer3_size; j++){
            if (irandom(child_id.layer3_size) == 1 && child_id.WL12[i,j] != 0){
                child_id.WL23[i,j]+=random_range(-0.2,0.2);
            }
            //Do random BIG mutation 1/100 of the normal mutation rate
            if (irandom(child_id.layer3_size*100) == 1){
                child_id.WL23[i,j]+=random_range(-5,5);  
                big_mutations+=1;          
            } 
        }
    }
}
