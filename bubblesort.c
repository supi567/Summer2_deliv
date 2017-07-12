#include <stdio.h>
#include <stdlib.h>

typedef enum _order {
    Ascending=1, Descending
} order;

void swap(int *x, int *y){
    int a;
    a=*x;*x=*y;*y=a;
}

int needSwap(int x, int y, order dir){
    if(dir == Ascending)
        return x > y;
    if(dir == Descending)
        return x < y;
    return 0;
}

void bubbleSort(int *array, int top, int end, order dir){
    int i, j, swaped;
    for(i = top; i < end; ++i){
        swaped = 0;
        for(j = top + 1; j <= end - i; ++j)
            if(needSwap(array[j-1], array[j], dir)){
                swap(&array[j-1], &array[j]);
                swaped = 1;
            }
        if(swaped == 0)break;
    }
}

int main(){
    int myarray[10], index, order;
    index=0;
    printf("Enter your numbers:");
    do{
        scanf("%d", &myarray[index++]);
    }while(myarray[index-1] != -1 && index < 10);
    --index;
    printf("Enter 1 if you want them to be in ascending order.\n"
           "Enter 2 if you want descending order\n");
    scanf("%d",&order);
    bubbleSort(myarray, 0, index-1, order);
    {
        int i;
        for(i=0;i<index;++i)
            printf("%d ", myarray[i]);
        printf("\n");
    }
    system("PAUSE");
    return 0;
}

