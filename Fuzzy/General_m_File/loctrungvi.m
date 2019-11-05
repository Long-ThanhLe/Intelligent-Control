ig=[1 0 5 0 2 0; 0 1 0 0 0 9; 0 7 0 3 0 0; 1 0 0 0 0 1; 2 0 2 0 6 0];
s=size(ig);
int i,j;
int tmp[9];
for i=1:height -1
    
    for j=1:weight -1
       
        tmp[0] = ig[i-1,j-1];
        tmp[] = ig[i-1,j];
        tmp[3] = ig[i-1,j+1];
        
        tmp[3] = ig[i,j-1];
        tmp[4] = ig[i,j];
        tmp[5] = ig[i,j+1];
        
        tmp[6] = ig[i+1,j-1];
        tmp[7] = ig[i+1,j];
        tmp[8] = ig[i+1,j+1];
        
        quicksort(tmp,9);
        proPixel=tmp[4];
        ikq=proPixel;
    end;
end;
        
        
        


