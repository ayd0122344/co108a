1.CPU

◎C編號對照表

![](https://github.com/ayd0122344/co108a/blob/master/05/C%E7%9A%84%E5%88%86%E5%B8%83%E5%9C%96.jpg)

◎ng→在ALU用來判斷最左邊位元是否為1, 是則為負數(∵二進制),在CPU中功用相當於"<"。(∵若x-y<0 → x<y)

◎zr→在ALU用來判斷全部位元是否為0, 在CPU中功用相當於"="。(∵若x-y=0 → x=y)

此時我們還缺少">"來判斷是否要JUMP,所以要在接出一條線(以下稱為PO)。

◎PO=ng'&zr'---------ng'(小於的相反)相當於 大於 , zr'(等於的相反)相當於大於 或 小於。

------------其餘CPU資訊請參考程式內註解------------



2.Memory

![](https://github.com/ayd0122344/co108a/blob/master/05/Memory.jpg)

![](https://github.com/ayd0122344/co108a/blob/master/05/Memorybit.jpg)

◎易混淆概念:

[14]為0 → 是RAM16K ; [14]為1 → "不"是RAM16K!

load為0 → "不"寫入 ; load為1 → 寫入!

為求在「RAM16K 寫入」: 需要用 [14]' & load 才可寫出「寫入RAM16K」的控制線。當此控制線為1時,即可寫入RAM16K!

------------其餘Memory資訊請參考程式內註解------------

3.Computer

依下圖結構將電路以程式完成就好囉!

![](https://github.com/ayd0122344/co108a/blob/master/05/computer.jpg)
