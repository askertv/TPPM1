program qbd;
uses Crt,Graph;
type mas=array[1..100] of real;
     mass=array[1..100] of integer;
var  gd,gm,i,yy:integer;
     cp2,niu2,atom1,atom2,atom3,dhmel:mass;
     v2,c2,at1,at2,at3,dH:mas;
     cpx,atx,atxx,dhx,vx:mas;
begin
     c2[1]:=6.667;c2[2]:=6.833;c2[3]:=7.333;c2[4]:=7.500;c2[5]:=8.133;
     c2[6]:=9.000;c2[7]:=10.500;c2[8]:=11.667;c2[9]:=12.167;c2[10]:=9.800;

     at1[1]:=0.001;at1[2]:=0.092;at1[3]:=0.197;at1[4]:=0.326;at1[5]:=0.392;
     at1[6]:=0.487;at1[7]:=0.539;at1[8]:=0.592;at1[9]:=0.645;at1[10]:=0.684;

         {******************  c3 *************************}  {7}
     {dH(dHmelt), kcal/mol}
     dH[1]:=2.667;dH[2]:=3.067;dH[3]:=3.080;dH[4]:=3.120;dH[5]:=3.187;
     dH[6]:=3.333;dH[7]:=3.467;dH[8]:=3.667;dH[9]:=3.000;dH[10]:=2.653;

     at2[1]:=0.001;at2[2]:=0.106;at2[3]:=0.205;at2[4]:=0.327;at2[5]:=0.406;
     at2[6]:=0.505;at2[7]:=0.560;at2[8]:=0.600;at2[9]:=0.660;at2[10]:=0.709;

         {******************* v(n) ***********************}   {8}
     v2[1]:=0.1325;v2[2]:=0.2138;v2[3]:=0.3711;
     v2[4]:=0.3757;v2[5]:=0.4743;v2[6]:=0.4958;
     v2[7]:=0.4567;v2[8]:=0.5283;v2[9]:=0.5539;

     at3[1]:=20;at3[2]:=40;at3[3]:=50;
     at3[4]:=55;at3[5]:=58;at3[6]:=60;
     at3[7]:=62;at3[8]:=65;at3[9]:=70;
    {***************************************************}
     cpx[1]:=6.6;cpx[2]:=7.3;cpx[3]:=8.0;cpx[4]:=8.7;
     cpx[5]:=9.4;cpx[6]:=10.1;cpx[7]:=10.8;cpx[8]:=11.5;cpx[9]:=12.2;
     atx[1]:=0.001;atx[2]:=0.115;atx[3]:=0.229;atx[4]:=0.343;
     atx[5]:=0.457;atx[6]:=0.571;atx[7]:=0.685;
     dhx[1]:=2.6;dhx[2]:=2.8;dhx[3]:=3.0;
     dhx[4]:=3.2;dhx[5]:=3.4;dhx[6]:=3.6;dhx[7]:=3.8;
     atxx[1]:=0.001;atxx[2]:=0.119;atxx[3]:=0.237;atxx[4]:=0.355;
     atxx[5]:=0.473;atxx[6]:=0.591;atxx[7]:=0.709;
     vx[1]:=0.13;vx[2]:=0.20;vx[3]:=0.27;vx[4]:=0.34;
     vx[5]:=0.41;vx[6]:=0.48;vx[7]:=0.55;
    {***************************************************}
     for i:=1 to 10 do
       begin
        cp2[i]:=round(c2[i]/0.01375-485);
        atom1[i]:=round(at1[i]*1000/1.14);
        dhmel[i]:=round(dH[i]/0.002535-1046.5);
        atom2[i]:=round(at2[i]*1000/1.18);
       end;
     for i:=1 to 9 do
       begin
        niu2[i]:=round(v2[i]/0.0010535-125.77);
        atom3[i]:=round(at3[i]/0.083-240.9);
       end;
     InitGraph(Gd, Gm, 'c:\tp\bin');
     yy:=getmaxy-15;
     line(5,5,5,yy);
     line(5,yy,640,yy);
     setcolor(lightblue);
     moveto(5+atom1[1],405-cp2[1]);
     for i:=1 to 10 do
      lineto(5+atom1[i],405-cp2[i]);
     for i:=1 to 8 do
      putpixel(8,round(405-(cpx[i]/0.01375-485)),white);
     for i:=1 to 6 do
      putpixel(round(5+atx[i]*1000/1.14),yy+3,white);
     setcolor(white);
     outtextxy(10,round(405-(cpx[1]/0.01375-485)),'6.6');
     outtextxy(10,round(405-(cpx[2]/0.01375-485)),'7.3');
     outtextxy(10,round(405-(cpx[3]/0.01375-485)),'8.0');
     outtextxy(10,round(405-(cpx[4]/0.01375-485)),'8.7');
     outtextxy(10,round(405-(cpx[5]/0.01375-485)),'9.4');
     outtextxy(10,round(405-(cpx[6]/0.01375-485)),'10.1');
     outtextxy(10,round(405-(cpx[7]/0.01375-485)),'10.8');
     outtextxy(10,round(405-(cpx[8]/0.01375-485)),'11.5');
     outtextxy(10,round(405-(cpx[9]/0.01375-485)),'Cp, Дж/моль*К');
     outtextxy(round(5+atx[1]*1000/1.14),yy+5,'0.001');
     outtextxy(round(5+atx[2]*1000/1.14),yy+5,'0.115');
     outtextxy(round(5+atx[3]*1000/1.14),yy+5,'0.229');
     outtextxy(round(5+atx[4]*1000/1.14),yy+5,'0.343');
     outtextxy(round(5+atx[5]*1000/1.14),yy+5,'0.457');
     outtextxy(round(5+atx[6]*1000/1.14),yy+5,'0.571');
     outtextxy(round(atx[7]*1000/1.14)-20,yy+5,'at.% Se');
     readln;
     cleardevice;
     setcolor(white);
     line(5,5,5,yy);
     line(5,yy,640,yy);
     setcolor(lightgreen);
     moveto(5+atom2[1],405-dhmel[1]);
     for i:=1 to 10 do
      lineto(5+atom2[i],405-dhmel[i]);
     for i:=1 to 7 do
      putpixel(8,round(405-(dhx[i]/0.002535-1046.5)),white);
     for i:=1 to 7 do
      putpixel(round(5+atxx[i]*1000/1.18),yy+3,white);
     setcolor(white);
     outtextxy(10,round(405-(dhx[1]/0.002535-1046.5)),'2.6');
     outtextxy(10,round(405-(dhx[2]/0.002535-1046.5)),'2.8');
     outtextxy(10,round(405-(dhx[3]/0.002535-1046.5)),'3.0');
     outtextxy(10,round(405-(dhx[4]/0.002535-1046.5)),'3.2');
     outtextxy(10,round(405-(dhx[5]/0.002535-1046.5)),'3.4');
     outtextxy(10,round(405-(dhx[6]/0.002535-1046.5)),'3.6');
     outtextxy(10,5,'dH, кДж/моль');
     outtextxy(round(5+atxx[1]*1000/1.18),yy+5,'0.001');
     outtextxy(round(5+atxx[2]*1000/1.18),yy+5,'0.119');
     outtextxy(round(5+atxx[3]*1000/1.18),yy+5,'0.237');
     outtextxy(round(5+atxx[4]*1000/1.18),yy+5,'0.355');
     outtextxy(round(5+atxx[5]*1000/1.18),yy+5,'0.473');
     outtextxy(round(5+atxx[6]*1000/1.18),yy+5,'0.591');
     outtextxy(round(atxx[7]*1000/1.18)-20,yy+3,'at.% Se');
     readln;
     cleardevice;
     setcolor(white);
     line(5,5,5,yy);
     line(5,yy,640,yy);
     setcolor(lightred);
     moveto(5+atom3[1],405-niu2[1]);
     for i:=1 to 9 do
      lineto(5+atom3[i],405-niu2[i]);
     for i:=1 to 7 do
      putpixel(8,round(405-(vx[i]/0.0010535-125.77)),white);
     for i:=2 to 7 do
      putpixel(round(5+i/0.0083-240.9),yy+3,white);
     setcolor(white);
     outtextxy(10,round(405-(vx[1]/0.0010535-125.77)),'0.13');
     outtextxy(10,round(405-(vx[2]/0.0010535-125.77)),'0.20');
     outtextxy(10,round(405-(vx[3]/0.0010535-125.77)),'0.27');
     outtextxy(10,round(405-(vx[4]/0.0010535-125.77)),'0.34');
     outtextxy(10,round(405-(vx[5]/0.0010535-125.77)),'0.41');
     outtextxy(10,round(405-(vx[6]/0.0010535-125.77)),'0.48');
     outtextxy(10,5,'v, c-cm');
     outtextxy(round(5+2/0.0083-240.9),yy+5,'20');
     outtextxy(round(5+3/0.0083-240.9),yy+5,'30');
     outtextxy(round(5+4/0.0083-240.9),yy+5,'40');
     outtextxy(round(5+5/0.0083-240.9),yy+5,'50');
     outtextxy(round(5+6/0.0083-240.9),yy+5,'60');
     outtextxy(round(7/0.0083-240.9)-20,yy+5,'at.% Se');
     readln;
     closegraph;
end.

