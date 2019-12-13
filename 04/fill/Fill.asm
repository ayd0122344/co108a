// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(FOREVER) //FOREVER可以讓此程式反白功能可重複測試

//n = 8192
    @8192
    D=A //將位址8192存在D
    @n
    M=D //將8192存在n

//arr = screen
    @SCREEN
    D=A
    @arr
    M=D
//i = 0
    @i
    M=0 // 將i設為0

//j = 0
    @j
    M=0 // 將j設為0

            //while(i<n)
            //=>if(i==n) goto ELSE
//--------------(PrintLoop)
                (PrintLoop)
                @i
                D=M //讀取i值並存在M
                @n
                D=D-M //目前等號右方的D為i,M為n之位址=>比較i跟n的差並將結果後存在D
                @ELSE
                D;JEQ //如果D==0 => goto ELSE清空

            //if(*KBD != 0)//檢驗是否按下鍵盤,否則goto ELSE
                @KBD
                D=M
                @ELSE
                D;JEQ //KBD值==0代表沒按下鍵盤=>goto ELSE清空

            //arr[i] = -1//因為-1在二進位中為1111111111111111,才會顯示全黑
                @arr
                D=M
                @i
                A=D+M //將i位址(M)加上螢幕位址(D)=>並將結果存在A
                //@SCREEN
                M=-1 // 在A暫存器(表示位址:螢幕範圍)顯示-1

            //i = i + 1
                @i
                M=M+1
                @IFEND // 跳過Else
                0;JMP
                // @PrintLoop
                // 0;JMP

//----------------(ELSE)
                (ELSE)//清空功能
                @j
                D=M //讀取j值並存在M
                @n
                D=D-M //目前等號右方的D為j,M為n之位址=>比較j跟n的差並將結果存在D
                @END
                D;JEQ //如果D==0代表清空完成=>goto END

                @arr
                D=M
                @j
                A=D+M
                M=0
                //j = j + 1
                @j
                M=M+1
                @ELSE
                0;JMP

//--------------(IFEND)//用來讓Print不用執行ELSE
                (IFEND)
                @PrintLoop
                0;JMP

//--------------(END)
                (END)
                @FOREVER
                0;JMP