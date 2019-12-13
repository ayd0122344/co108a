//KBD(keyboard)-->24576
//SCREEN-->16384
#include<stdio.h>

int main()
{
    arr = SCREEN; //KBD
    n = 8192; //螢幕的大小
    i = 0;
    while(i<n)
    {
        if(*KBD != 0) //當按下鍵盤的時候
        arr[i] = -1 //螢幕就全黑
        i=i+1
        else
        arr[i] = 0//沒按就全白
    }
}