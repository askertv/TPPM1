program data_file1;
uses crt;
type mas=array[1..100] of real;
var  s1,t1,s2,t2,d1,t3:mas;
     r1,r2,r3,r4,r5,r6,r7,r8,r9:mas;
     v1,v2,v3,v4,v5,v6,v7,v8,v9:mas;
     i:integer;
     data1,data2,data3,data4,data5,data6:text;
     data7,data8,data9,data10,data11,data12:text;
begin
     {clrscr;}
         {***************   a1   *************************}
      {s1*1e-3, Om-1*cm-1}
     s1[1]:=0.7497;s1[2]:=0.6496;s1[3]:=0.5998;s1[4]:=0.5549;
     s1[5]:=0.5355;s1[6]:=0.5000;s1[7]:=0.4427;s1[8]:=0.4427;
     s1[9]:=0.4641;s1[10]:=0.7997;s1[11]:=0.9282;s1[12]:=0.9639;
     s1[13]:=1.0639;s1[14]:=1.1067;s1[15]:=1.3138;s1[16]:=1.8207;
      {t1,oC}
     t1[1]:=325.73;t1[2]:=371.45;t1[3]:=428.60;t1[4]:=474.32;
     t1[5]:=520.04;t1[6]:=574.90;t1[7]:=611.48;t1[8]:=664.06;
     t1[9]:=686.92;t1[10]:=693.78;t1[11]:=693.78;t1[12]:=728.07;
     t1[13]:=750.93;t1[14]:=794.36;t1[15]:=888.09;t1[16]:=1141.83;

       {***************   a2   *************************}
      {s2*1e-3, Om-1*cm-1}
     s2[1]:=1.1424;s2[2]:=1.0000;s2[3]:=0.7854;s2[4]:=0.7211;
     s2[5]:=0.5355;s2[6]:=0.5069;s2[7]:=0.5069;s2[8]:=0.5284;
     s2[9]:=0.7140;s2[10]:=0.8925;s2[11]:=0.9996;s2[12]:=1.2138;
     s2[13]:=1.5708;s2[14]:=1.8564;s2[15]:=2.1777;
      {t2,oC}
     t2[1]:=200.00;t2[2]:=280.01;t2[3]:=385.15;t2[4]:=430.89;
     t2[5]:=595.48;t2[6]:=652.63;t2[7]:=666.34;t2[8]:=693.78;
     t2[9]:=693.78;t2[10]:=709.78;t2[11]:=750.93;t2[12]:=851.51;
     t2[13]:=1002.39;t2[14]:=1093.83;t2[15]:=1228.70;
       {***************   a3   *************************}
      {d1, g/cm3}
     d1[1]:=7.3857;d1[2]:=7.3750;d1[3]:=7.2964;
     d1[4]:=6.8857;d1[5]:=6.8679;d1[6]:=6.5821;
      {t3,oC}
     t3[1]:=400.00;t3[2]:=436.36;t3[3]:=687.89;
     t3[4]:=739.39;t3[5]:=787.89;t3[6]:=1130.30;

       {***************   b1   *************************}
      {v1-v9, c-cm}          {r1-r9, oC}
     v1[1]:=0.2157;v1[2]:=0.1443;v1[3]:=0.1300;
     v1[4]:=0.1214;v1[5]:=0.1157;

     r1[1]:=495.56;r1[2]:=648.89;r1[3]:=771.11;
     r1[4]:=841.11;r1[5]:=962.22;

      {***************   b2  *************************}
     v2[1]:=0.2800;v2[2]:=0.2643;v2[3]:=0.2200;v2[4]:=0.1785;
     v2[5]:=0.1657;v2[6]:=0.1643;v2[7]:=0.1571;

     r2[1]:=578.29;r2[2]:=701.71;r2[3]:=738.29;r2[4]:=817.26;
     r2[5]:=857.14;r2[6]:=897.14;r2[7]:=976.00;

      {***************   b3  *************************}
     v3[1]:=0.4143;v3[2]:=0.3929;v3[3]:=0.3486;v3[4]:=0.3786;
     v3[5]:=0.2786;v3[6]:=0.2500;v3[7]:=0.2214;v3[8]:=0.2000;
     v3[9]:=0.1914;

     r3[1]:=661.71;r3[2]:=680.00;r3[3]:=720.00;r3[4]:=760.00;
     r3[5]:=800.00;r3[6]:=840.00;r3[7]:=880.00;r3[8]:=920.00;
     r3[9]:=960.00;

      {***************   b4  *************************}
     v4[1]:=0.5629;v4[2]:=0.4986;v4[3]:=0.4214;v4[4]:=0.3343;
     v4[5]:=0.2929;v4[6]:=0.2714;v4[7]:=0.2500;v4[8]:=0.2300;
     v4[9]:=0.2143;

     r4[1]:=689.14;r4[2]:=720.00;r4[3]:=777.14;r4[4]:=788.57;
     r4[5]:=838.86;r4[6]:=869.71;r4[7]:=902.86;r4[8]:=925.71;
     r4[9]:=960.00;

      {***************   b5  *************************}
     v5[1]:=0.5071;v5[2]:=0.4786;v5[3]:=0.4214;v5[4]:=0.3714;
     v5[5]:=0.3357;v5[6]:=0.2929;v5[7]:=0.2643;v5[8]:=0.2429;
     v5[9]:=0.2214;

     r5[1]:=709.71;r5[2]:=747.43;r5[3]:=781.71;r5[4]:=805.71;
     r5[5]:=840.00;r5[6]:=873.14;r5[7]:=907.43;r5[8]:=931.43;
     r5[9]:=965.71;

      {***************   b6  *************************}
     v6[1]:=0.5571;v6[2]:=0.4357;
     v6[3]:=0.3500;v6[4]:=0.2357;

     r6[1]:=718.86;r6[2]:=780.57;
     r6[3]:=840.00;r6[4]:=960.00;

      {***************   b7  *************************}
     v7[1]:=0.5143;v7[2]:=0.4643;v7[3]:=0.4143;
     v7[4]:=0.3857;v7[5]:=0.2986;v7[6]:=0.2371;

     r7[1]:=720.00;r7[2]:=745.14;r7[3]:=777.14;
     r7[4]:=840.00;r7[5]:=868.57;r7[6]:=921.14;

      {***************   b8  *************************}
     v8[1]:=0.6643;v8[2]:=0.5714;v8[3]:=0.4786;
     v8[4]:=0.3514;v8[5]:=0.3143;

     r8[1]:=696.00;r8[2]:=731.43;r8[3]:=771.43;
     r8[4]:=861.71;r8[5]:=948.86;

      {***************   b9  *************************}
     v9[1]:=0.5571;v9[2]:=0.4929;v9[3]:=0.4500;
     v9[4]:=0.3871;v9[5]:=0.3571;v9[6]:=0.3143;

     r9[1]:=748.57;r9[2]:=777.14;r9[3]:=809.14;
     r9[4]:=868.57;r9[5]:=898.29;r9[6]:=957.71;
      {***********************************************}
{     assign(data1,'a:\datarez\dat1.txt');
     rewrite(data1);
     writeln(data1,'Температурная зависимость электропроводности Bi2Se3');
     writeln(data1,'в твердом и жидком состоянии (для образцов)');
     writeln(data1,'');
     writeln(data1,'G*10-3, Ом-1*см-1           Т, К');
     writeln(data1,'');
     for i:=1 to 16 do
      writeln(data1,s1[i]:1:4);
     writeln(data1,'');
     for i:=1 to 16 do
      writeln(data1,t1[i]+273:1:2);
     close(data1);
     assign(data2,'a:\datarez\dat2.txt');
     rewrite(data2);
     writeln(data2,'Температурная зависимость электропроводности Bi2Se3');
     writeln(data2,'в твердом и жидком состоянии (данные)');
     writeln(data2,'');
     writeln(data2,'G*10-3, Ом-1*см-1           Т, К');
     writeln(data2,'');
     for i:=1 to 15 do
      writeln(data2,s2[i]:1:4);
     writeln(data2,'');
     for i:=1 to 15 do
      writeln(data2,t2[i]+273:1:2);
     close(data2);
     assign(data3,'a:\datarez\dat3.txt');
     rewrite(data3);
     writeln(data3,'Температурная зависимость плотности Bi2Se3');
     writeln(data3,'в твердом и жидком состоянии (данные)');
     writeln(data3,'');
     writeln(data3,'d,г/см3                     Т, К');
     writeln(data3,'');
     for i:=1 to 6 do
      writeln(data3,d1[i]:1:4);
     writeln(data3,'');
     for i:=1 to 6 do
      writeln(data3,t3[i]+273:1:2);
     close(data3);
     assign(data4,'a:\datarez\dat4.txt');
     rewrite(data4);
     writeln(data4,'Зависимость вязкости от температуры');
     writeln(data4,'для сплавов системы Bi-Se (20 ат.% Se)');
     writeln(data4,'');
     writeln(data4,'v,c-cm                      Т, К');
     writeln(data4,'');
     for i:=1 to 5 do
      writeln(data4,v1[i]:1:4);
     writeln(data4,'');
     for i:=1 to 5 do
      writeln(data4,r1[i]+273:1:2);
     close(data4);
     assign(data5,'a:\datarez\dat5.txt');
     rewrite(data5);
     writeln(data5,'Зависимость вязкости от температуры');
     writeln(data5,'для сплавов системы Bi-Se (40 ат.% Se)');
     writeln(data5,'');
     writeln(data5,'v,c-cm                      Т, К');
     writeln(data5,'');
     for i:=1 to 7 do
      writeln(data5,v2[i]:1:4);
     writeln(data5,'');
     for i:=1 to 7 do
      writeln(data5,r2[i]+273:1:2);
     close(data5);
     assign(data6,'a:\datarez\dat6.txt');
     rewrite(data6);
     writeln(data6,'Зависимость вязкости от температуры');
     writeln(data6,'для сплавов системы Bi-Se (50 ат.% Se)');
     writeln(data6,'');
     writeln(data6,'v,c-cm                      Т, К');
     writeln(data6,'');
     for i:=1 to 9 do
      writeln(data6,v3[i]:1:4);
     writeln(data6,'');
     for i:=1 to 9 do
      writeln(data6,r3[i]+273:1:2);
     close(data6);
     assign(data7,'a:\datarez\dat7.txt');
     rewrite(data7);
     writeln(data7,'Зависимость вязкости от температуры');
     writeln(data7,'для сплавов системы Bi-Se (55 ат.% Se)');
     writeln(data7,'');
     writeln(data7,'v,c-cm                      Т, К');
     writeln(data7,'');
     for i:=1 to 9 do
      writeln(data7,v4[i]:1:4);
     writeln(data7,'');
     for i:=1 to 9 do
      writeln(data7,r4[i]+273:1:2);
     close(data7);
     assign(data8,'a:\datarez\dat8.txt');
     rewrite(data8);
     writeln(data8,'Зависимость вязкости от температуры');
     writeln(data8,'для сплавов системы Bi-Se (58 ат.% Se)');
     writeln(data8,'');
     writeln(data8,'v,c-cm                      Т, К');
     writeln(data8,'');
     for i:=1 to 9 do
      writeln(data8,v5[i]:1:4);
     writeln(data8,'');
     for i:=1 to 9 do
      writeln(data8,r5[i]+273:1:2);
     close(data8);
     assign(data9,'a:\datarez\dat9.txt');
     rewrite(data9);
     writeln(data9,'Зависимость вязкости от температуры');
     writeln(data9,'для сплавов системы Bi-Se (60 ат.% Se)');
     writeln(data9,'');
     writeln(data9,'v,c-cm                      Т, К');
     writeln(data9,'');
     for i:=1 to 4 do
     writeln(data9,v6[i]:1:4);
     writeln(data9,'');
     for i:=1 to 4 do
      writeln(data9,r6[i]+273:1:2);
     close(data9);
     assign(data10,'a:\datarez\dat10.txt');
     rewrite(data10);
     writeln(data10,'Зависимость вязкости от температуры');
     writeln(data10,'для сплавов системы Bi-Se (62 ат.% Se)');
     writeln(data10,'');
     writeln(data10,'v,c-cm                      Т, К');
     writeln(data10,'');
     for i:=1 to 6 do
      writeln(data10,v7[i]:1:4);
     writeln(data10,'');
     for i:=1 to 6 do
      writeln(data10,r7[i]+273:1:2);
     close(data10);
     assign(data11,'a:\datarez\dat11.txt');
     rewrite(data11);
     writeln(data11,'Зависимость вязкости от температуры');
     writeln(data11,'для сплавов системы Bi-Se (65 ат.% Se)');
     writeln(data11,'');
     writeln(data11,'v,c-cm                      Т, К');
     writeln(data11,'');
     for i:=1 to 5 do
     writeln(data11,v8[i]:1:4);
     writeln(data11,'');
     for i:=1 to 5 do
      writeln(data11,r8[i]+273:1:2);
     close(data11);
     assign(data12,'a:\datarez\dat12.txt');
     rewrite(data12);
     writeln(data12,'Зависимость вязкости от температуры');
     writeln(data12,'для сплавов системы Bi-Se (70 ат.% Se)');
     writeln(data12,'');
     writeln(data12,'v,c-cm                      Т, К');
     writeln(data12,'');
     for i:=1 to 6 do
      writeln(data12,v9[i]:1:4);
     writeln(data12,'');
     for i:=1 to 6 do
      writeln(data12,r9[i]+273:1:2);
     close(data12);}
end.

