program data_file2;
uses crt;
type mas=array[1..100] of real;
     mass=array[1..100] of integer;
var  i:integer;
     c1,c2,c3,dH,at1,at2,a2,g2,h2:mas;
     d1,d2,d3,d4,d5,d6,d7:mas;
     t1,t4,t5,t6,t7,t8,t9:mas;
     g,t2,t3,a1,g1,h1,t88:mass;
     date1,date2,date3,date4,date5,date6,date7:text;
     date8,date9,date10,date11,date12,date13,date14:text;
begin
     {******************  c1  *********************} {1}
     {c1-c3(Cp), cal/mol*K           t1(t),oC}
     c1[1]:=14.900;c1[2]:=14.354;c1[3]:=12.585;c1[4]:=12.313;c1[5]:=12.075;
     c1[6]:=12.075;c1[7]:=11.735;c1[8]:=11.565;c1[9]:=11.224;c1[10]:=11.020;

     t1[1]:=692.25;t1[2]:=694.27;t1[3]:=695.78;t1[4]:=696.48;t1[5]:=703.87;
     t1[6]:=723.94;t1[7]:=762.68;t1[8]:=783.80;t1[9]:=794.37;t1[10]:=808.45;

     {******************  c2  *********************} {2}
     {at(at.%)}
     c2[1]:=6.667;c2[2]:=6.833;c2[3]:=7.333;c2[4]:=7.500;c2[5]:=8.133;
     c2[6]:=9.000;c2[7]:=10.500;c2[8]:=11.667;c2[9]:=12.167;c2[10]:=9.800;

     at1[1]:=0;at1[2]:=0.092;at1[3]:=0.197;at1[4]:=0.326;at1[5]:=0.392;
     at1[6]:=0.487;at1[7]:=0.539;at1[8]:=0.592;at1[9]:=0.645;at1[10]:=0.684;

     {******************  c3 *********************}  {3}
     {dH(dHmelt), kcal/mol}
     dH[1]:=2.667;dH[2]:=3.067;dH[3]:=3.080;dH[4]:=3.120;dH[5]:=3.187;
     dH[6]:=3.333;dH[7]:=3.467;dH[8]:=3.667;dH[9]:=3.000;dH[10]:=2.653;

     at2[1]:=0;at2[2]:=0.106;at2[3]:=0.205;at2[4]:=0.327;at2[5]:=0.406;
     at2[6]:=0.505;at2[7]:=0.560;at2[8]:=0.600;at2[9]:=0.660;at2[10]:=0.709;

     {******************  c4 *********************}  {4}
     {g(G), ohm*cm-1}
     c3[1]:=7.66;c3[2]:=6.32;
     g[1]:=800;g[2]:=1030;

     {******************  d1 *********************}  {5}
     {d, г/см3         t,oC}
     d1[1]:=4.821;d1[2]:=4.756;d1[3]:=4.751;d1[4]:=4.745;
     d1[5]:=4.740;d1[6]:=4.730;d1[7]:=4.715;d1[8]:=4.701;

     t2[1]:=20;t2[2]:=140;t2[3]:=150;t2[4]:=170;
     t2[5]:=180;t2[6]:=210;t2[7]:=215;t2[8]:=220;

     {******************  d2 *********************}  {6}
     d2[1]:=3.97;d2[2]:=3.90;d2[3]:=3.82;d2[4]:=3.76;d2[5]:=3.67;
     d2[6]:=3.64;d2[7]:=3.59;d2[8]:=3.54;d2[9]:=3.50;d2[10]:=3.42;
     d2[11]:=3.35;

     t3[1]:=230;t3[2]:=287;t3[3]:=356;t3[4]:=425;t3[5]:=503;
     t3[6]:=526;t3[7]:=575;t3[8]:=631;t3[9]:=666;t3[10]:=738;t3[11]:=819;


     {******************  e1 *********************}  {7}
     d3[1]:=3.9667;d3[2]:=3.9480;d3[3]:=3.9293;
     d3[4]:=3.9133;d3[5]:=3.9013;d3[6]:=3.8707;
     d3[7]:=3.8307;d3[8]:=3.8173;d3[9]:=3.7533;

     t4[1]:=221.78;t4[2]:=242.90;t4[3]:=255.58;
     t4[4]:=269.31;t4[5]:=279.87;t4[6]:=289.37;
     t4[7]:=305.21;t4[8]:=322.11;t4[9]:=353.80;

     {******************  e2 *********************}  {8}
     d4[1]:=4.0627;d4[2]:=3.9000;

     t5[1]:=222.57;t5[2]:=409.45;

     {******************  e3 *********************}  {9}
     d5[1]:=3.9400;d5[2]:=3.9267;d5[3]:=3.9027;
     d5[4]:=3.7907;d5[5]:=3.7240;

     t6[1]:=230.97;t6[2]:=241.47;t6[3]:=257.22;
     t6[4]:=320.21;t6[5]:=362.20;

     {******************  e4 *********************}  {10}
     d6[1]:=4.0093;d6[2]:=3.7827;

     t7[1]:=204.72;t7[2]:=392.65;

     {******************  e5 *********************}  {11}
     d7[1]:=4.8200;d7[2]:=4.7667;d7[3]:=4.7640;d7[4]:=4.7453;
     d7[5]:=4.7267;d7[6]:=4.7133;d7[7]:=3.9667;d7[8]:=3.8867;
     d7[9]:=3.326;

     t8[1]:=15.84;t8[2]:=120.40;t8[3]:=132.01;t8[4]:=157.36;
     t8[5]:=189.04;t8[6]:=220.00;t8[7]:=232.34;t8[8]:=289.37;
     t8[9]:=329.04;

     {******************  f1 *********************}  {12}
     a1[1]:=-31;a1[2]:=-22;a1[3]:=-14;a1[4]:=-6;a1[5]:=+3;
     a1[6]:=+11;a1[7]:=+20;a1[8]:=+28;a1[9]:=+36;a1[10]:=+45;

     g1[1]:=980;g1[2]:=1080;g1[3]:=1190;g1[4]:=1300;g1[5]:=1400;
     g1[6]:=1500;g1[7]:=1610;g1[8]:=1720;g1[9]:=1820;g1[10]:=1920;

     h1[1]:=12;h1[2]:=14;h1[3]:=17;h1[4]:=19;h1[5]:=22;
     h1[6]:=24;h1[7]:=27;h1[8]:=29;h1[9]:=32;h1[10]:=34;

     t88[1]:=750;t88[2]:=800;t88[3]:=850;t88[4]:=900;t88[5]:=950;
     t88[6]:=1000;t88[7]:=1050;t88[8]:=1100;t88[9]:=1150;t88[10]:=1200;
     {******************  f2 *********************}  {13}
     h2[1]:=12.4;h2[2]:=19;h2[3]:=36;

     g2[1]:=9.8534;g2[2]:=12.9828;g2[3]:=20.3793;

     {******************  f3 *********************}  {14}
     a2[1]:=-72.92;a2[2]:=-89.58;a2[3]:=-110.42;a2[4]:=-114.58;
     a2[5]:=-118.75;a2[6]:=-118.33;a2[7]:=-104.17;a2[8]:=-91.67;
     a2[9]:=-54.17;a2[10]:=-37.50;a2[11]:=+6.25;

     t9[1]:=77.78;t9[2]:=208.33;t9[3]:=372.22;t9[4]:=416.67;
     t9[5]:=511.11;t9[6]:=566.67;t9[7]:=652.78;t9[8]:=683.33;
     t9[9]:=708.33;t9[10]:=736.11;t9[11]:=977.78;

{     assign(date1,'a:\datarez\dat13.txt');
     rewrite(date1);
     append(date1);
     writeln(date1,'Molar heat capasities for liquid Bi-Se alloys: Bi2Se3');
     writeln(date1,'');
     writeln(date1,'Cp, cal/mol*K           t, K');
     writeln(date1,'');
     for i:=1 to 10 do
      writeln(date1,c1[i]:1:3);
     writeln(date1,'');
     for i:=1 to 10 do
      writeln(date1,t1[i]+273:1:2);
     close(date1);
     assign(date2,'a:\datarez\dat14.txt');
     rewrite(date2);
     append(date2);
     writeln(date2,'Концентрационная зависимость молярной теплоемкости');
     writeln(date2,'жидких сплавов системы Bi-Se');
     writeln(date2,'');
     writeln(date2,'Cp, cal/mol*K              at.% Se');
     writeln(date2,'');
     for i:=1 to 10 do
      writeln(date2,c2[i]:1:3);
     writeln(date2,'');
     for i:=1 to 10 do
      writeln(date2,at1[i]:1:3);
     close(date2);
     assign(date3,'a:\datarez\dat15.txt');
     rewrite(date3);
     append(date3);
     writeln(date3,'Entalpies of metling for Bi-Se alloys');
     writeln(date3,'');
     writeln(date3,'dH_melt, kcal/mol           at.% Se');
     writeln(date3,'');
     for i:=1 to 10 do
      writeln(date3,dH[i]:1:3);
     writeln(date3,'');
     for i:=1 to 10 do
      writeln(date3,at2[i]:1:3);
     close(date3);
     assign(date4,'a:\datarez\dat16.txt');
     rewrite(date4);
     append(date4);
     writeln(date4,'Molar heat capasities as a function of electrical coductivity');
     writeln(date4,'');
     writeln(date4,'Cp, cal/mol*K           G, (ohm*cm)-1');
     writeln(date4,'');
     for i:=1 to 2 do
      writeln(date4,c3[i]:1:2);
     writeln(date4,'');
     for i:=1 to 2 do
      writeln(date4,g[i]);
     close(date4);
     assign(date5,'a:\datarez\dat17.txt');
     rewrite(date5);
     append(date5);
     writeln(date5,'Температурная зависимость плотности селена в твердом состоянии');
     writeln(date5,'');
     writeln(date5,'d, г/см3             t, K');
     writeln(date5,'');
     for i:=1 to 8 do
      writeln(date5,d1[i]:1:3);
     writeln(date5,'');
     for i:=1 to 8 do
      writeln(date5,t2[i]+273);
     close(date5);
     assign(date6,'a:\datarez\dat18.txt');
     rewrite(date6);
     append(date6);
     writeln(date6,'Температурная зависимость плотности селена в жидком состоянии');
     writeln(date6,'');
     writeln(date6,'d, г/см3             t, K');
     writeln(date6,'');
     for i:=1 to 11 do
      writeln(date6,d2[i]:1:3);
     writeln(date6,'');
     for i:=1 to 11 do
      writeln(date6,t3[i]+273);
     close(date6);
     assign(date7,'a:\datarez\dat19.txt');
     rewrite(date7);
     append(date7);
     writeln(date7,'Температурная зависимость плотности селена в твердом и жидком состоянии');
     writeln(date7,'');
     writeln(date7,'S. Dobinsky, J. Weselowsky. Bull. Intern. Akad. Polan., N1-2A,446 (1936)');
     writeln(date7,'A. Campbell, S. Epstein. J. Amer. Chem. Soc., 64., 2679 (1942)');
     writeln(date7,'');
     writeln(date7,'d, г/см3             t, K');
     writeln(date7,'');
     for i:=1 to 9 do
      writeln(date7,d3[i]:1:4);
     writeln(date7,'');
     for i:=1 to 9 do
      writeln(date7,t4[i]+273:1:2);
     close(date7);
     assign(date8,'a:\datarez\dat20.txt');
     rewrite(date8);
     append(date8);
     writeln(date8,'Температурная зависимость плотности селена в твердом и жидком состоянии');
     writeln(date8,'');
     writeln(date8,'К.В. Астахов, Н.А. Пенин, Э.И. Добкина. Ж. физ. химии,20, 403 (1946)');
     writeln(date8,'');
     writeln(date8,'d, г/см3             t, K');
     writeln(date8,'');
     for i:=1 to 2 do
      writeln(date8,d4[i]:1:4);
     writeln(date8,'');
     for i:=1 to 2 do
      writeln(date8,t5[i]+273:1:2);
     close(date8);
     assign(date9,'a:\datarez\dat21.txt');
     rewrite(date9);
     append(date9);
     writeln(date9,'Температурная зависимость плотности селена в твердом и жидком состоянии');
     writeln(date9,'');
     writeln(date9,'К.М. Хилилов, Изв. АН АзССР. Серия  физ. матем. и техн. наук, 6, 67 (1959)');
     writeln(date9,'');
     writeln(date9,'d, г/см3             t, K');
     writeln(date9,'');
     for i:=1 to 5 do
      writeln(date9,d5[i]:1:4);
     writeln(date9,'');
     for i:=1 to 5 do
      writeln(date9,t6[i]+273:1:2);
     close(date9);
     assign(date10,'a:\datarez\dat22.txt');
     rewrite(date10);
     append(date10);
     writeln(date10,'Температурная зависимость плотности селена в твердом и жидком состоянии');
     writeln(date10,'');
     writeln(date10,'L. Lucas, G. Urbain. Compt.rend., 258, 6403 (1964)');
     writeln(date10,'');
     writeln(date10,'d, г/см3             t, K');
     writeln(date10,'');
     for i:=1 to 2 do
      writeln(date10,d6[i]:1:4);
     writeln(date10,'');
     for i:=1 to 2 do
      writeln(date10,t7[i]+273:1:2);
     close(date10);
     assign(date11,'a:\datarez\dat23.txt');
     rewrite(date11);
     append(date11);
     writeln(date11,'Температурная зависимость плотности селена в твердом и жидком состоянии');
     writeln(date11,'');
     writeln(date11,'E. Bonier. Compt.rend., 258, 4967 (1964)');
     writeln(date11,'Л.А. Нисельсон, В.М. Глазов. Иссл. плот. селена и теллура в тв. и ж. сост.,');
     writeln(date11,' Том IV, N11, (1968)');
     writeln(date11,'');
     writeln(date11,'d, г/см3             t, K');
     writeln(date11,'');
     for i:=1 to 9 do
      writeln(date11,d7[i]:1:4);
     writeln(date11,'');
     for i:=1 to 9 do
      writeln(date11,t8[i]+273:1:2);
     close(date11);
     assign(date12,'a:\datarez\dat24.txt');
     rewrite(date12);
     append(date12);
     writeln(date12,'Температурная зависимость диф. термоэ.д.с., электропров. и теплопров.');
     writeln(date12,' селенида висмута в жидком состоянии');
     writeln(date12,'');
     writeln(date12,'a, мкв/град      G, Ом-1*см-1     H*100, вт/см*град    t, K');
     writeln(date12,'');
     for i:=1 to 10 do
      writeln(date12,a1[i]);
     writeln(date12,'');
     for i:=1 to 10 do
      writeln(date12,g1[i]);
     writeln(date12,'');
     for i:=1 to 10 do
      writeln(date12,h1[i]);
     writeln(date12,'');
     for i:=1 to 10 do
      writeln(date12,t88[i]+273);
     close(date12);
     assign(date13,'a:\datarez\dat25.txt');
     rewrite(date13);
     append(date13);
     writeln(date13,'Зависимость теплопроводности от электропроводности');
     writeln(date13,' селенида висмута в жидком состоянии');
     writeln(date13,'');
     writeln(date13,'Н*100, вт/см*град         G, Ом-1*см-1');
     writeln(date13,'');
     for i:=1 to 3 do
      writeln(date13,h2[i]:1:1);
     writeln(date13,'');
     for i:=1 to 3 do
      writeln(date13,g2[i]:1:4);
     close(date13);
     assign(date14,'a:\datarez\dat26.txt');
     rewrite(date14);
     append(date14);
     writeln(date14,'Температурная зависимость диф. термоэ.д.с.');
     writeln(date14,' селенида висмута в твердом и в жидком состоянии');
     writeln(date14,'');
     writeln(date14,'a, мкв/град           t, K');
     writeln(date14,'');
     for i:=1 to 11 do
      writeln(date14,a2[i]:1:2);
     writeln(date14,'');
     for i:=1 to 11 do
      writeln(date14,t9[i]+273:1:2);
     close(date14);     }
end.
