Unit TPPM1;
Interface
Uses Crt;
Type massiv=array[0..500] of real;
Procedure Laboratornaya_rabota_N2;
Procedure Laboratornaya_rabota_N3;
Procedure Laboratornaya_rabota_N4;
Procedure Koncentraciya;
Procedure Uslovia;{условия пользования модулем ТРРМ}
Function Stepen(osnov,step:real):real;
Function Konz_pr(d,A_a,A_b,m_a,m_b:real):real;
Procedure {процедура для лаб. работы N2}
 Raschet_k_l2(deltaH,T_pl2,T,niu2,Dif2,w2:real;var K_eff2:massiv);
Procedure {процедура для лаб. работы N3}
 Raspr_l3(m3,A3,d3,m31,A31,niu3,w3,Ko3,v3,Dif3,miu3:real;L3:integer;
          var Xs:massiv;Ro_nach,Ro_konech:real);
Procedure {процедура для лаб. работы N4}
 Progonka_l4(L4,el4:longint;d4,m4,A4,m41,A41,k:real;var One,x_s:massiv);

Implementation

Procedure Laboratornaya_rabota_N2;
 Var
  s1:integer;Koef:massiv;
  x1,x2,x3,x4,x5,x6:real;
 Begin
  ClrScr;
  WriteLn('Лабораторная работа N2');
  Write('введите изменение энтальпии: ');
  ReadLn(x1);
  Write('введите температуру плавления примеси: ');
  ReadLn(x2);
  Write('введите текущую температуру: ');
  ReadLn(x3);
  Write('введите вязкость основного вещества: ');
  ReadLn(x4);
  Write('введите коэфф. диффузии: ');
  ReadLn(x5);
  Write('введите скорость вращения: ');
  ReadLn(x6);
  Raschet_k_l2(x1,x2,x3,x4,x5,x6,Koef);
  for s1:=0 to 20 do
    WriteLn('k_eff[',s1,']=',Koef[s1]);
  ReadKey;
  for s1:=21 to 40 do
    WriteLn('k_eff[',s1,']=',Koef[s1]);
  ReadKey;
  for s1:=41 to 60 do
    WriteLn('k_eff[',s1,']=',Koef[s1]);
  ReadKey;
  for s1:=61 to 80 do
    WriteLn('k_eff[',s1,']=',Koef[s1]);
  ReadKey;
  for s1:=81 to 100 do
    WriteLn('k_eff[',s1,']=',Koef[s1]);
  ReadKey;
  for s1:=101 to 120 do
    WriteLn('k_eff[',s1,']=',Koef[s1]);
  ReadKey;
  for s1:=121 to 125 do
    WriteLn('k_eff[',s1,']=',Koef[s1]);
  ReadKey;
 End;
Procedure Laboratornaya_rabota_N3;
 Var x1x,x2x,x3x,x4x,x5x,x6x,x7x,x8x,x9x,x10x,x11x:real;
     Ro_1,Ro_2:real;Konzen:massiv;s2,x12x:integer;
 Begin
  ClrScr;
  WriteLn('Лабораторная работа N3');
  Write('введите массу основного вещества (г): ');
  ReadLn(x1x);
  Write('введите атомный вес основного вещества (г): ');
  ReadLn(x2x);
  Write('введите плотность основного вещества (г/см3): ');
  ReadLn(x3x);
  Write('введите массу примеси (г): ');
  ReadLn(x4x);
  Write('введите атомный вес примеси (г): ');
  ReadLn(x5x);
  Write('введите вязкость основного вещества: ');
  ReadLn(x6x);
  Write('введите скорость вращения: ');
  ReadLn(x7x);
  Write('введите равновесный коэфф. распред.: ');
  ReadLn(x8x);
  Write('введите скорость кристаллизации: ');
  ReadLn(x9x);
  Write('введите коэфф. диффузии: ');
  ReadLn(x10x);
  Write('введите подвижность НЗ: ');
  ReadLn(x11x);
  Write('введите длину слитка (cм): ');
  ReadLn(x12x);
  Raspr_l3(x1x,x2x,x3x,x4x,x5x,x6x,x7x,x8x,x9x,x10x,x11x,x12x,Konzen,Ro_1,Ro_2);
   for s2:=0 to x12x-1 do
    WriteLn('Xs [',s2,'] = ',Konzen[s2]);
  ReadKey;
 End;
Procedure Laboratornaya_rabota_N4;
  var
  x1xx,x2xx:longint;x3xx,x4xx,x5xx,x6xx,x7xx,x8xx,x9xx:real;ix1,ix2:massiv;
  s3:integer;
  begin
   ClrScr;
   WriteLn('Лабораторная работа N4');
   Write('введите длину слитка: ');
   ReadLn(x1xx);
   Write('введите ширину расплавленной зоны: ');
   ReadLn(x2xx);
   Write('введите плотность основ. вещества: ');
   ReadLn(x3xx);
   Write('введите массу основ. вещества: ');
   ReadLn(x4xx);
   Write('введите атомный вес основ. вещества: ');
   ReadLn(x5xx);
   Write('введите массу примеси: ');
   ReadLn(x6xx);
   Write('введите атомный вес примеси: ');
   ReadLn(x7xx);
   Write('введите равновесный коэф. распределения: ');
   ReadLn(x8xx);
   Progonka_l4(x1xx,x2xx,x3xx,x4xx,x5xx,x6xx,x7xx,x8xx,ix1,ix2);
   WriteLn('Распределение концентрации примеси после первой прогонки');
     for s3:=0 to x1xx-1 do
      WriteLn('Xs [',s3,'] = ',ix1[s3]);
   ReadKey;
   WriteLn('Распределение концентрации примеси после последней прогонки');
     for s3:=0 to x1xx-1 do
      WriteLn('Xs [',s3,'] = ',ix2[s3]);
   ReadKey;
  end;
Procedure Koncentraciya;
  var plotnost,ves1,ves2,massa1,massa2,Konzent:real;
  begin
  ClrScr;
  WriteLn('Вычисление концентрации примеси');
  Write('введите плотность основного вещества (г/см3): ');
  ReadLn(plotnost);
  Write('введите атомный вес основного вещества(г/моль): ');
  ReadLn(ves1);
  Write('введите атомный вес примеси (г/моль): ');
  ReadLn(ves2);
  Write('введите массу основного вещества(г): ');
  ReadLn(massa1);
  Write('введите массу примеси (г): ');
  ReadLn(massa2);
  Konzent:=Konz_pr(plotnost,ves1,ves2,massa1,massa2);
  WriteLn('Xo = ',Konzent);
  ReadKey;
  end;
Procedure Uslovia;
 begin
  ClrScr;
  WriteLn('Условия пользования модулем TPPM');
  ReadKey;
  WriteLn('Лабораторная работа N2');
  WriteLn('процедура Raschet_k_l2 (x1,x2,x3,x4,x5,x6,x7),');
  WriteLn('где x1-изменение энтальпии ');
  WriteLn('    x2-температура плавления примеси');
  WriteLn('    x3-температура Т');
  WriteLn('    x4-вязкость');
  WriteLn('    x5-коэфф. диффузии ');
  WriteLn('    x6-скорость вращения');
  WriteLn('Var:');
  WriteLn('    x7-эфф. коэфф. распределения(искомая величина)');
  WriteLn('    x7-массив, т.е. х7:massiv;');
  ReadKey;
  ClrScr;
  WriteLn('Лабораторная работа N3');
  WriteLn('процедура Raspr_l3(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13),');
  WriteLn('где x1-масса осн. вещества');
  WriteLn('    x2-его атомный вес');
  WriteLn('    x3-его плотность');
  WriteLn('    x4-масса примеси');
  WriteLn('    x5-его атомный вес');
  WriteLn('    x6-вязкость');
  WriteLn('    x7-скорость вращения');
  WriteLn('    x8-равновесный коэфф. распред.');
  WriteLn('    x9-скорость кристаллизации');
  WriteLn('    x10-коэфф. диффузии');
  WriteLn('    x11-подвижность НЗ');
  WriteLn('    x12-длина слитка-целое число');
  WriteLn('Var:');
  WriteLn('    x13-распред.конц.примеси');
  WriteLn('    x13-массив, т.е. х13:massiv;');
  WriteLn('    x14-удельное сопротивление в начале слитка');
  WriteLn('    x15-удельное сопротивление в конце слитка');
  ReadKey;
  ClrScr;
  WriteLn('Лабораторная работа N4');
  WriteLn('процедура Progonka_l4(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10),');
  WriteLn('где x1-длина слитка ');
  WriteLn('    x2-ширина расплавленной зоны');
  WriteLn('    x1,x2:longint;-целые числа');
  WriteLn('    x3-плотность основ. вещества');
  WriteLn('    x4-его масса');
  WriteLn('    x5-его атомный вес');
  WriteLn('    x6-масса примеси');
  WriteLn('    x7-его атомный вес');
  WriteLn('    x8-равновесный коэф. распределения');
  WriteLn('Var:');
  WriteLn('    x9-распределение конц. после первой прогонки');
  WriteLn('    x10-распределение конц. после последней прогонки');
  WriteLn('    x9,x10-массивы, т.е. x9,x10:massiv;');
  ReadKey;
 end;
Function Stepen(osnov,step:real):real;
 Var z:real;
 begin
  z:=exp(step*ln(abs(osnov)));
  Stepen:=z;
 end;
Function Konz_pr;
 Var y_b,n_b:real;
 begin
  y_b:=m_b*A_a/(m_a*A_b+m_b*A_a);
  n_b:=d*6.02e+23*y_b/A_a;
  Konz_pr:=n_b;
 end;


Procedure Raschet_k_l2;
 Var Ko2,delta2:real;i2:integer;
 Begin
  Ko2:=exp(deltaH/8.31*(1/T-1/T_pl2));
  delta2:=1.5*Stepen(Dif2,0.33)*Stepen(niu2,0.17)*Stepen(w2,-0.5);
   for i2:=0 to 125 do
    K_eff2[i2]:=Ko2/(Ko2+(1-Ko2)*exp(-i2*delta2/(Dif2*60000)));
 End;

Procedure Raspr_l3;
 Var X_oL,delta3,K_eff3:real;i3:integer;
 begin
  X_oL:=Konz_pr(d3,A3,A31,m3,m31);
  delta3:=1.5*Stepen(Dif3,0.33)*Stepen(niu3,0.17)*Stepen(w3,-0.5);
  K_eff3:=Ko3/(Ko3+(1-Ko3)*exp(-delta3/(Dif3*600)));
   for i3:=0 to L3-1 do
    Xs[i3]:=X_oL*K_eff3*Stepen(1-i3/L3,K_eff3-1);
  Ro_nach:=1/(1.6e-19*miu3*Xs[0]);
  Ro_konech:=1/(1.6e-19*miu3*Xs[L3-1]);
 end;

Procedure Progonka_l4;
 Var x1,x11,g4:real; m,n,y:longint;x_s1,x_s2:massiv;
    Begin                               {нач. проц. Progonka }
      x1:=Konz_pr(d4,A4,A41,m4,m41);
      m:= Round(2*L4/el4+1);         {10}
      for n:=1 to m do                    {цикл прогонок}
       begin
        for y:=0 to L4-el4 do
          begin
           x_s1[y]:=x1*(1-(1-k)*exp(-k*y/el4));     {8}
           x_s[y]:=x_s1[y];
           if n=1 then One[y]:=x_s1[y];
          end;
        x1:=x_s1[0];
        x11:=x_s1[L4-el4];                            {конц. по (8)}
        for y:=L4-el4+1 to L4-1   do
          begin
           g4:=y/L4;
           x_s2[y]:=x11*exp((k-1)*ln(1-g4));   {9}
           x_s[y]:=x_s2[y];
           if n=1 then One[y]:=x_s2[y];
          end;
       end;
      End;
End.
