#include<stdio.h>

int main()
{
    int R0 = 3;
    int R1 = 5;
    int R2 = 0;

    //用for迴圈不好轉換成組合語言,盡量以while去想
    //用加法實現乘法,R1+R2的次數depends on R0 => 5*3就相當於5加了3次
    while(R0 > 0){
        R2 = R1 + R2;
        R0 = R0 - 1 ;//(R0--);
        printf("R0 = %d R1 = %d R2 = %d\n",R0,R1,R2);
    }
    printf("the result is %d\n",R2);
}