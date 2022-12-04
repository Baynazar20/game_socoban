USes GraphABC, Events, ABCObjects;
VAr a, b, a1, b1, a2, b2, a3, b3, a4, b4, a5, b5, a6, b6, a7, b7, a8, b8, a9, b9, a10, b10, a11, b11, a12, b12, a13, b13, a14, b14, a15, b15, a16, b16, c, nirede, kl, lv, n, m, step, sony, obsy, jem1, jem2, gutardy, jem: Integer;
t: string;
p: PictureAbc;
x: array [0..100, 0..100] of Integer;
z: StarABC;
krug: CircleABC;
Label 20;
Procedure Komek_2;
  VAr a, b, k1, k2, k3, k4, k5, k6: Integer;
  Label 30, 40, 50, 60;
  BEgin
  Brush.Color:= ClCyan;
  Rectangle (a15, b15, a16, b16);
  Font.Color:= clBlack;
  t:= 'Ädim sany: '+inttostr(step);
  TextOut (((a15+a16) div 2)-(TextWidth(t) div 2), ((b15+b16) div 2)-(TextHeight(t) div 2), t);
  Font.Color:= clYellow;
  
  Brush.Color:= clForestGreen;
  Pen.Color:= clForestGreen;
  For a:= n-1 to n+1 do
    BEgin 
    if (a>jem1) or (a<1) then goto 50;
    For b:= m-1 to m+1 do
      BEgin 
      if (b>jem2) or (b<1) then goto 60; 
      k1:= a11+((b-1)*kl);
      k2:= b11+((a-1)*kl);
      k3:= a11+(b*kl);
      k4:= b11+(a*kl);
      Rectangle (k1, k2, k3, k4);
60:
      end;
50:
    end;
  Pen.Color:= clBlack;
  For a:= n-1 to n+1 do
    BEgin 
    if (a>jem1) or (a<1) then goto 40;
    For b:= m-1 to m+1 do
      BEgin 
      if (b>jem2) or (b<1) then goto 30; 
      k1:= a11+((b-1)*kl);
      k2:= b11+((a-1)*kl);
      k3:= a11+(b*kl);
      k4:= b11+(a*kl);
      if x[a, b]=1 then
        BEgin 
        Brush.Color:= clYellow;
        Rectangle (k1, k2, k3, k4)
        end;
      if x[a, b]=2 then 
        Begin 
        z := new StarABC((k1+k3) div 2, (k2+k4) div 2, kl div 2,  kl div 8 ,4,clYellow);
        end;
      if x[a, b]=3 then 
        Begin 
        k5:= (k1+k3) div 2;
        k6:= k2+(kl div 2);
        Brush.Color:= clSaddleBrown;
        Pen.Color:= clYellow;
        Rectangle (a11+((b-1)*kl), b11+((a-1)*kl), a11+(b*kl), b11+(a*kl));
        krug:= new CircleABC(k5, (k2+k6) div 2, kl div 8,clYellow);
        Pen.Color:= clRed;
        Pen.Width:= 4;
        Line (k1, k6, k3, k6);
        Pen.Color:= clBlack;
        Pen.Width:= 1;
        end;
      if x[a, b]=4 then
        BEgin 
        k5:= (k1+k3) div 2;
        k6:= k2+(kl div 7);
        z := new StarABC((k1+k3) div 2, (k2+k4) div 2, kl div 2,  kl div 8 ,5,clOrange);
        krug:= new CircleABC(k5, k6, kl div 8,clOrange);
        end;
      if x[a, b]=5 then 
        Begin 
        k5:= (k1+k3) div 2;
        k6:= k2+(kl div 2);
        Brush.Color:= clGold;
        Pen.Color:= clBlack;
        Rectangle (a11+((b-1)*kl), b11+((a-1)*kl), a11+(b*kl), b11+(a*kl));
        krug:= new CircleABC(k5, (k2+k6) div 2, kl div 8,clYellow);
        Pen.Color:= clRed;
        Pen.Width:= 4;
        Line (k1, k6, k3, k6);
        Pen.Color:= clBlack;
        Pen.Width:= 1;
        end;
     if x[a, b]=6 then 
        Begin 
        z := new StarABC((k1+k3) div 2, (k2+k4) div 2, kl div 2,  kl div 8 ,4,clYellow);
        k5:= (k1+k3) div 2;
        k6:= k2+(kl div 7);
        z := new StarABC((k1+k3) div 2, (k2+k4) div 2, kl div 2,  kl div 8 ,5,clOrange);
        krug:= new CircleABC(k5, k6, kl div 8,clOrange);
        end;
30:
      end;
40:
    end;
  end;
Procedure Komek; 
  VAr a, b, k1, k2, k3, k4, k5, k6, r, r1, r2: Integer;
  BEgin
  if jem1>jem2 then jem:= jem1 else jem:= jem2;
  a11:= Window.Width div 3;  kl:= a11 div jem;  a12:= a11+a11;
  b11:= Window.Height div 5;  b12:= b11+a11;
  Brush.Color:= clForestGreen;
  Rectangle (a11, b11, a12, b12);
      
  a15:= a11;                        a16:= a12;
  b15:= b12+Window.Height div 15;   b16:= b15+Window.Height div 15;
  Brush.Color:= ClCyan;
  Rectangle (a15, b15, a16, b16);
  r1:= a12+Window.Width div 15; r:= r1+(2*Window.Width div 15); r2:= b11+(Window.Height div 15);
  Rectangle (r1, b11, r, r2);
  t:= 'Täzeden';
  Font.Color:= clBlack;
  TextOut (((r1+r) div 2)-(TextWidth(t) div 2), ((b11+r2) div 2)-(TextHeight(t) div 2), t);
  
  step:= 0;
  t:= 'Ädim sany: '+inttostr(step);
  TextOut (((a15+a16) div 2)-(TextWidth(t) div 2), ((b15+b16) div 2)-(TextHeight(t) div 2), t);
  Font.Color:= clYellow;
  For a:= 1 to jem1 do
    BEgin 
    For b:= 1 to jem2 do
      BEgin 
      k1:= a11+((b-1)*kl);
      k2:= b11+((a-1)*kl);
      k3:= a11+(b*kl);
      k4:= b11+(a*kl);
      if x[a, b]=1 then
        BEgin 
        Brush.Color:= clYellow;
        Rectangle (k1, k2, k3, k4)
        end;
      if x[a, b]=2 then 
        Begin 
        z := new StarABC((k1+k3) div 2, (k2+k4) div 2, kl div 2,  kl div 8 ,4,clYellow);
        end;
      if x[a, b]=3 then 
        Begin 
        k5:= (k1+k3) div 2;
        k6:= k2+(kl div 2);
        Brush.Color:= clSaddleBrown;
        Pen.Color:= clYellow;
        Rectangle (a11+((b-1)*kl), b11+((a-1)*kl), a11+(b*kl), b11+(a*kl));
        krug:= new CircleABC(k5, (k2+k6) div 2, kl div 8,clYellow);
        Pen.Color:= clRed;
        Pen.Width:= 4;
        Line (k1, k6, k3, k6);
        Pen.Color:= clBlack;
        Pen.Width:= 1;
        end;
      if x[a, b]=4 then
        BEgin 
        k5:= (k1+k3) div 2;
        k6:= k2+(kl div 7);
        z := new StarABC((k1+k3) div 2, (k2+k4) div 2, kl div 2,  kl div 8 ,5,clOrange);
        krug:= new CircleABC(k5, k6, kl div 8,clOrange);
        end;
      if x[a, b]=5 then 
        Begin 
        k5:= (k1+k3) div 2;
        k6:= k2+(kl div 2);
        Brush.Color:= clGold;
        Pen.Color:= clBlack;
        Rectangle (a11+((b-1)*kl), b11+((a-1)*kl), a11+(b*kl), b11+(a*kl));
        krug:= new CircleABC(k5, (k2+k6) div 2, kl div 8,clYellow);
        Pen.Color:= clRed;
        Pen.Width:= 4;
        Line (k1, k6, k3, k6);
        Pen.Color:= clBlack;
        Pen.Width:= 1;
        end;
      end;
    end;
  end;
Procedure Dereje_1;
  VAr a, b: Integer;
  BEgin
  jem1:= 8; jem2:= 8;
  For a:= 1 to jem1 do For b:= 1 to jem2 do x[a, b]:= 0;
  x[5, 6]:= 4; n:= 5; m:= 6;
  x[4, 2]:= 2; x[5, 8]:= 2; x[7, 5]:= 2; x[2, 6]:= 2;
  x[6, 5]:= 3; x[5, 7]:= 3; x[4, 5]:= 3; x[4, 6]:= 3;
  x[1, 5]:= 1; x[1, 6]:= 1; x[1, 7]:= 1;
  x[2, 5]:= 1; x[2, 7]:= 1;
  x[3, 1]:= 1; x[3, 2]:= 1; x[3, 3]:= 1; x[3, 4]:= 1; x[3, 5]:= 1; x[3, 7]:= 1;
  x[4, 1]:= 1; x[4, 7]:= 1; x[4, 8]:= 1;
  x[5, 1]:= 1; x[5, 2]:= 1; x[5, 3]:= 1; x[5, 4]:= 1;
  x[6, 4]:= 1; x[6, 6]:= 1; x[6, 7]:= 1; x[6, 8]:= 1;
  X[7, 4]:= 1; x[7, 6]:= 1; 
  x[8, 4]:= 1; x[8, 5]:= 1; x[8, 6]:= 1;
  Komek; obsy:= 4; sony:= 0;
  Step:= 0;
  end;
Procedure Dereje_2;
  VAr a, b: Integer;
  BEgin
  jem1:= 9; jem2:= 9;
  For a:= 1 to jem1 do For b:= 1 to jem2 do x[a, b]:= 0;
  
  x[8, 4]:= 2; x[8, 5]:= 2; x[8, 6]:= 2;
  
  x[3, 3]:= 3; x[3, 4]:= 3; x[4, 3]:= 3;
  
  x[4, 2]:= 4; n:= 4; m:= 2;
  
  x[1, 1]:= 1; x[1, 2]:= 1; x[1, 3]:= 1; x[1, 4]:= 1; x[1, 5]:= 1;
  x[2, 1]:= 1; x[2, 5]:= 1; x[2, 6]:= 1; x[2, 7]:= 1; x[2, 8]:= 1; x[2, 9]:= 1; 
  x[3, 1]:= 1; x[3, 5]:= 1; x[3, 6]:= 1; x[3, 9]:= 1;
  x[4, 1]:= 1; x[4, 9]:= 1; 
  x[5, 1]:= 1; x[5, 2]:= 1; x[5, 3]:= 1; x[5, 4]:= 1; x[5, 5]:= 1; x[5, 9]:= 1;
  x[6, 5]:= 1; x[6, 7]:= 1; x[6, 8]:= 1; x[6, 9]:= 1;
  x[7, 3]:= 1; x[7, 4]:= 1; x[7, 5]:= 1; x[7, 8]:= 1;
  x[8, 3]:= 1; x[8, 8]:= 1;
  x[9, 3]:= 1; x[9, 4]:= 1; x[9, 5]:= 1; x[9, 6]:= 1; x[9, 7]:= 1; x[9, 8]:= 1;
  Komek; obsy:= 3; sony:= 0;
  Step:= 0; gutardy:= 0;
  end;
Procedure Dereje_3;
  VAr a, b: Integer;
  BEgin
  jem1:= 6; jem2:= 8;
  For a:= 0 to 10 do For b:= 0 to 10 do x[a, b]:= 1;
  For a:= 1 to jem1 do For b:= 1 to jem2 do x[a, b]:= 0;
  
  x[3, 3]:= 4; n:= 3; m:= 3; 
  
  x[4, 3]:= 3; x[3, 4]:= 3; x[3, 6]:= 3; x[4, 5]:= 3; x[4, 7]:= 5;
  
  x[2, 6]:= 2; x[2, 7]:= 2; x[3, 7]:= 2; x[5, 7]:= 2;
  
  x[1, 2]:= 1; x[1, 3]:= 1; x[1, 4]:= 1; x[1, 5]:= 1; x[1, 6]:= 1; x[1, 7]:= 1; x[1, 8]:= 1;
  x[2, 1]:= 1; x[2, 2]:= 1; x[2, 4]:= 1; x[2, 5]:= 1; x[2, 8]:= 1; 
  x[3, 1]:= 1; x[3, 8]:= 1;
  x[4, 1]:= 1; x[4, 8]:= 1;
  x[5, 1]:= 1; x[5, 2]:= 1; x[5, 3]:= 1; x[5, 4]:= 1; x[5, 8]:= 1;
  x[6, 4]:= 1; x[6, 5]:= 1; x[6, 6]:= 1; x[6, 7]:= 1; x[6, 8]:= 1;
  
  Komek; obsy:= 5; sony:= 1;
  Step:= 0; gutardy:= 0;
  end;
Procedure Dereje_4;
  VAr a, b: Integer;
  BEgin
  jem1:= 7; jem2:= 6;
  For a:= 0 to 10 do For b:= 0 to 10 do x[a, b]:= 1;
  For a:= 1 to jem1 do For b:= 1 to jem2 do x[a, b]:= 0;
  
  x[4, 3]:= 4; n:= 4; m:= 3;
  
  x[2, 3]:= 2;
  
  x[5, 4]:= 3; x[4, 2]:= 5;
  
  x[1, 1]:= 1; x[1, 2]:= 1; x[1, 3]:= 1; x[1, 4]:= 1;
  x[2, 1]:= 1; x[2, 4]:= 1; 
  x[3, 1]:= 1; x[3, 4]:= 1; x[3, 5]:= 1; x[3, 6]:= 1;
  x[4, 1]:= 1; x[4, 6]:= 1; 
  x[5, 1]:= 1; x[5, 6]:= 1;
  x[6, 1]:= 1; x[6, 4]:= 1; x[6, 5]:= 1; x[6, 6]:= 1;
  x[7, 1]:= 1; x[7, 2]:= 1; x[7, 3]:= 1; x[7, 4]:= 1;
  
  Komek; obsy:= 2; sony:= 1;
  Step:= 0; gutardy:= 0;
  end;
Procedure Dereje_5;
  VAr a, b: Integer;
  BEgin
  jem1:= 7; jem2:= 6;
  For a:= 0 to 10 do For b:= 0 to 10 do x[a, b]:= 1;
  For a:= 1 to jem1 do For b:= 1 to jem1 do x[a, b]:= 0;
  
  x[4, 4]:= 5; x[5, 4]:= 5; 
  
  x[3, 4]:= 4; n:= 3; m:= 4;
  
  x[4, 3]:= 3;
  
  x[5, 3]:= 2;
  
  For a:= 1 to jem1 do
    BEgin 
    x[a, 1]:= 1;
    x[1, a]:= 1;
    x[jem1, a]:= 1;
    x[a, 6]:= 1;
    end;
  x[3, 3]:= 1;
  
  Komek; obsy:= 3; sony:= 2;
  Step:= 0; gutardy:= 0;
  end;
Procedure Dereje_6;
  VAr a, b: Integer;
  BEgin
  jem1:= 6; jem2:= 9;
  For a:= 0 to 10 do For b:= 0 to 10 do x[a, b]:= 1;
  For a:= 1 to jem1 do For b:= 1 to jem2 do x[a, b]:= 0;
  
  x[5, 7]:= 4; n:= 5; m:= 7;
  
  x[3, 7]:= 3; x[4, 7]:= 3;
  
  x[5, 3]:= 2; x[5, 5]:= 2;
  
  x[1, 3]:= 1; x[1, 4]:= 1; x[1, 5]:= 1; x[1, 6]:= 1;
  x[2, 1]:= 1; x[2, 2]:= 1; x[2, 3]:= 1; x[2, 6]:= 1; x[2, 7]:= 1; x[2, 8]:= 1; x[2, 9]:= 1;
  x[3, 1]:= 1; x[3, 9]:= 1;
  x[4, 1]:= 1; x[4, 3]:= 1; x[4, 6]:= 1; x[4, 9]:= 1; 
  x[5, 1]:= 1; x[5, 6]:= 1; x[5, 9]:= 1;
  For a:= 1 to jem2 do x[6, a]:= 1;
  
  Komek; obsy:= 2; sony:= 0;
  Step:= 0; gutardy:= 0;
  end;
Procedure Dereje_7;
  VAr a, b: Integer;
  BEgin
  jem1:= 6; jem2:= 8;
  For a:= 0 to 10 do For b:= 0 to 10 do x[a, b]:= 1;
  For a:= 1 to jem1 do For b:= 1 to jem2 do x[a, b]:= 0;
  
  x[3, 4]:= 5; x[3, 5]:= 5;
  
  x[3, 7]:= 4; n:= 3; m:= 7;
  
  x[3, 6]:= 3;
  
  x[3, 3]:= 2;
  
  For a:= 1 to jem2 do x[1, a]:= 1;
  x[2, 1]:= 1; x[2, 8]:= 1;
  x[3, 1]:= 1; x[3, 8]:= 1;
  x[4, 1]:= 1; x[4, 8]:= 1;
  x[5, 1]:= 1; x[5, 2]:= 1; x[5, 3]:= 1; x[5, 4]:= 1; x[5, 5]:= 1; x[5, 8]:= 1;
  x[6, 5]:= 1; x[6, 6]:= 1; x[6, 7]:= 1; x[6, 8]:= 1;
  
  Komek; obsy:= 3; sony:= 2;
  Step:= 0; gutardy:= 0;
  end;
Procedure Dereje_8;
  VAr a, b: Integer;
  BEgin
  jem1:= 7; jem2:= 8;
  For a:= 0 to 10 do For b:= 0 to 10 do x[a, b]:= 1;
  For a:= 1 to jem1 do For b:= 1 to jem2 do x[a, b]:= 0;
  
  x[4, 5]:= 4; n:= 4; m:= 5;
  
  x[3, 5]:= 3; x[4, 4]:= 3; x[4, 6]:= 3; x[5, 5]:= 3; 
  
  x[3, 4]:= 2; x[3, 6]:= 2; x[5, 4]:= 2; x[5, 6]:= 2; 
  
  For a:= 1 to jem1 do x[a, 8]:= 1;
  For a:= 2 to jem2 do x[7, a]:= 1;
  For a:= 2 to jem2 do x[1, a]:= 1;
  x[2, 2]:= 1;  x[3, 2]:= 1; x[4, 2]:= 1; x[4, 1]:= 1; x[5, 1]:= 1; x[6, 1]:= 1; x[7, 1]:= 1;
  
  Komek; obsy:= 4; sony:= 0;
  Step:= 0; gutardy:= 0;
  end;
Procedure Dereje_9;
  VAr a, b, c: Integer;
  BEgin
  jem1:= 17; jem2:= 29;
  if jem1>jem2 then c:= jem1 else c:= jem2;
  For a:= 0 to c do For b:= 0 to c do x[a, b]:= 1;
  For a:= 1 to jem1 do For b:= 1 to jem2 do x[a, b]:= 0;
  
  x[16, 4]:= 4; n:= 16; m:= 4;
  
  x[15, 3]:= 3;
  
  x[16, 2]:= 2;
  
  For a:= 2 to jem2 do x[1, a]:= 1;
  For a:= 1 to jem1-2 do x[a, 2]:= 1; x[15, 1]:= 1; x[16, 1]:= 1; x[17, 1]:= 1; 
  For a:= 2 to jem2 do x[17, a]:= 1;
  For a:= 2 to jem1 do x[a, 29]:= 1;
  For a:= 4 to 27 do x[3, a]:= 1;
  For a:= 4 to 15 do x[a, 4]:= 1;
  For a:= 4 to 15 do x[a, 27]:= 1;
  For a:= 6 to 25 do x[5, a]:= 1;
  For a:= 5 to 16 do x[a, 6]:= 1;
  For a:= 8 to 26 do x[15, a]:= 1;
  For a:= 7 to 15 do x[a, 8]:= 1;
  For a:= 5 to 13 do x[a, 25]:= 1;
  For a:= 9 to 23 do x[7, a]:= 1;
  For a:= 10 to 24 do x[13, a]:= 1;
  For a:= 9 to 12 do x[a, 10]:= 1;
  For a:= 8 to 11 do x[a, 23]:= 1;
  For a:= 11 to 21 do x[9, a]:= 1;
  For a:= 12 to 22 do x[11, a]:= 1;
  
  Komek; obsy:= 1; sony:= 0;
  Step:= 0; gutardy:= 0;
  end;
Procedure Dereje_10;
  VAr a, b, c: Integer;
  BEgin
  jem1:= 8; jem2:= 11;
  if jem1>jem2 then c:= jem1 else c:= jem2;
  For a:= 0 to c do For b:= 0 to c do x[a, b]:= 1;
  For a:= 1 to jem1 do For b:= 1 to jem2 do x[a, b]:= 0;
  
  x[5, 3]:= 4; n:= 5; m:= 3;
  
  x[5, 5]:= 3; x[5, 7]:= 3; x[5, 9]:= 3;
  
  x[2, 8]:= 2; x[3, 8]:= 2; x[4, 8]:= 2;
  
  For a:= 1 to 9 do x[8, a]:= 1;
  For a:= 1 to 7 do x[4, a]:= 1;
  For a:= 4 to 8 do x[a, 1]:= 1; 
  For a:= 1 to 6 do x[a, 11]:= 1; 
  For a:= 1 to 3 do x[a, 7]:= 1; 
  For a:= 8 to 10 do x[1, a]:= 1; 
  x[7, 9]:= 1; x[6, 9]:= 1; x[6, 10]:= 1; x[3, 9]:= 1; x[4, 9]:= 1; x[6, 3]:= 1; x[6, 5]:= 1; x[6, 7]:= 1;
  
  Komek; obsy:= 3; sony:= 0;
  Step:= 0; gutardy:= 0;
  end;
Procedure Dereje_11;
  VAr a, b, c: Integer;
  BEgin
  jem1:= 8; jem2:= 9;
  if jem1>jem2 then c:= jem1 else c:= jem2;
  For a:= 0 to c do For b:= 0 to c do x[a, b]:= 1;
  For a:= 1 to jem1 do For b:= 1 to jem2 do x[a, b]:= 0;
  
  x[3, 7]:= 4; n:= 3; m:= 7;
  
  x[4, 7]:= 3; x[5, 7]:= 3;
  
  x[5, 3]:= 2; x[5, 4]:= 2;
  
  For a:= 3 to 8 do x[1, a]:= 1; 
  For a:= 4 to 9 do x[7, a]:= 1; 
  For a:= 1 to 4 do x[8, a]:= 1; 
  For a:= 4 to 8 do x[a, 1]:= 1; 
  For a:= 3 to 6 do x[a, 9]:= 1; 
  For a:= 2 to 4 do x[a, 3]:= 1; x[4, 2]:= 1;
  x[2, 8]:= 1; x[3, 8]:= 1; x[3, 5]:= 1; x[3, 6]:= 1; x[4, 5]:= 1; x[5, 5]:= 1;
  
  
  Komek; obsy:= 2; sony:= 0;
  Step:= 0; gutardy:= 0;
  end;
Procedure Dereje_12;
  VAr a, b, c: Integer;
  BEgin
  jem1:= 8; jem2:= 9;
  if jem1>jem2 then c:= jem1 else c:= jem2;
  For a:= 0 to c do For b:= 0 to c do x[a, b]:= 1;
  For a:= 1 to jem1 do For b:= 1 to jem2 do x[a, b]:= 0;
  
  x[7, 4]:= 4; n:= 7; m:= 4;
  
  x[5, 3]:= 3; x[6, 3]:= 3; x[6, 4]:= 3;
  
  x[4, 8]:= 5; x[3, 3]:= 2; x[3, 4]:= 2; x[3, 5]:= 2;
  
  For a:= 1 to 7 do x[a, 9]:= 1;
  For a:= 6 to 8 do x[1, a]:= 1;
  For a:= 2 to 6 do x[2, a]:= 1;
  For a:= 4 to 8 do x[a, 1]:= 1;
  For a:= 2 to 4 do x[4, a]:= 1; x[3, 2]:= 1;
  For a:= 2 to 6 do x[8, a]:= 1;
  For a:= 6 to 9 do x[7, a]:= 1;
  x[4, 6]:= 1; x[6, 5]:= 1; x[6, 6]:= 1;
  
  Komek; obsy:= 4; sony:= 1;
  Step:= 0; gutardy:= 0;
  end;
Procedure Dereje_13;
  VAr a, b, c: Integer;
  BEgin
  jem1:= 7; jem2:= 9;
  if jem1>jem2 then c:= jem1 else c:= jem2;
  For a:= 0 to c do For b:= 0 to c do x[a, b]:= 1;
  For a:= 1 to jem1 do For b:= 1 to jem2 do x[a, b]:= 0;
  
  x[4, 4]:= 4; n:= 4; m:= 4;
  
  x[3, 3]:= 3; x[3, 7]:= 3; x[5, 6]:= 3;
  
  For a:= 4 to 6 do x[a, 5]:= 2; x[3, 5]:= 5;
  
  For a:= 1 to 5 do x[a, 1]:= 1;
  For a:= 2 to 4 do x[1, a]:= 1;
  For a:= 5 to 7 do x[a, 3]:= 1; x[5, 2]:= 1;
  For a:= 4 to 7 do x[7, a]:= 1;
  For a:= 7 to 9 do x[5, a]:= 1; x[6, 7]:= 1;
  For a:= 1 to 4 do x[a, 9]:= 1;
  For a:= 6 to 8 do x[1, a]:= 1;
  For a:= 4 to 6 do x[2, a]:= 1;
  
  Komek; obsy:= 4; sony:= 1;
  Step:= 0; gutardy:= 0;
  end;
Procedure Dereje_14;
  VAr a, b, c: Integer;
  BEgin
  jem1:= 9; jem2:= 8;
  if jem1>jem2 then c:= jem1 else c:= jem2;
  For a:= 0 to c do For b:= 0 to c do x[a, b]:= 1;
  For a:= 1 to jem1 do For b:= 1 to jem2 do x[a, b]:= 0;
  
  x[8, 4]:= 4; n:= 8; m:= 4;
  
  For a:= 3 to 5 do x[a, 4]:= 3;
  
  For a:= 6 to 8 do x[a, 2]:= 2;
  
  For a:= 2 to 9 do x[a, 1]:= 1;
  For a:= 2 to 8 do x[9, a]:= 1;
  For a:= 3 to 8 do x[a, 8]:= 1;
  For a:= 2 to 4 do x[2, a]:= 1;
  For a:= 4 to 7 do x[1, a]:= 1;
  For a:= 3 to 5 do x[6, a]:= 1;
  For a:= 3 to 6 do x[7, a]:= 1;
  
  x[2, 7]:= 1; x[3, 7]:= 1; x[4, 3]:= 1; x[4, 5]:= 1;
  Komek; obsy:= 3; sony:= 0;
  Step:= 0; gutardy:= 0;
  end;
Procedure MouseDown (x, y, mb: Integer);
  VAr r1, r, r2: Integer;
  BEgin
  if mb=1 then 
    BEgin 
    r1:= a12+Window.Width div 15; r:= r1+(2*Window.Width div 15); r2:= b11+(Window.Height div 15);
    if (x>=a3) and (x<=a4) and (y>=b3) and (y<=b4) and (nirede=0) then c:= 1;
    if (x>=a5) and (x<=a6) and (y>=b5) and (y<=b6) and (nirede=0) then c:= 2;
    if (x>=a7) and (x<=a8) and (y>=b7) and (y<=b8) and (nirede=0) then c:= 3;
    if (x>=a9) and (x<=a10) and (y>=b9) and (y<=b10) and (nirede=0) then c:= 4;
    if (x>=r1) and (x<=r) and (y>=b11) and (y<=r2) and (nirede=1) then c:= 5;
    end;
  end;
Procedure Indiki;
  VAr i1, i2, i3, i4: Integer;
  BEgin
  end;
Procedure MouseUp (x, y, mb: Integer);
  BEgin 
  if mb=1 then 
    Begin 
    if c=1 then 
      BEgin 
      p:= new PictureABC(0, 0,'1.png');
      nirede:= 1;
      
      a11:= Window.Width div 3;  kl:= a11 div 8;  a12:= a11+a11;
      b11:= Window.Height div 5;  b12:= b11+a11;
      
      a13:= a11;  a14:= a12;
      b13:= b1;   b14:= b2;
      Brush.Color:= clSaddleBrown;
      Rectangle (a13, b13, a14, b14);
      t:= 'Dereje № '+inttostr(lv); 
      TextOut (((a13+a14) div 2)-(TextWidth(t) div 2), ((b13+b14) div 2)-(TextHeight(t) div 2), t);
      
      if lv=1 then Dereje_1;
      if lv=2 then Dereje_2;
      if lv=3 then Dereje_3;
      if lv=4 then Dereje_4;
      if lv=5 then Dereje_5;
      if lv=6 then Dereje_6;
      if lv=7 then Dereje_7;
      if lv=8 then Dereje_8;
      if lv=9 then Dereje_9;
      if lv=10 then Dereje_10;
      if lv=11 then Dereje_11;
      if lv=12 then Dereje_12;
      if lv=13 then Dereje_13;
      if lv=14 then Dereje_14;
      end;
    if c=5 then 
      BEgin 
      if sony=obsy then BEgin gutardy:= 0; lv:= lv-1; end;
      if lv=1 then Dereje_1;
      if lv=2 then Dereje_2;
      if lv=3 then Dereje_3;
      if lv=4 then Dereje_4;
      if lv=5 then Dereje_5;
      if lv=6 then Dereje_6;
      if lv=7 then Dereje_7;
      if lv=8 then Dereje_8;
      if lv=9 then Dereje_9;
      if lv=10 then Dereje_10;
      if lv=11 then Dereje_11;
      if lv=12 then Dereje_12;
      if lv=13 then Dereje_13;
      if lv=14 then Dereje_14;
      end;
    if (c=4) and (nirede=0) then closeWindow; 
    end;
  c:= 0;
  end;
Procedure KeyDown (key: Integer);
  Label 10, 20, 30;
  BEgin 
  if gutardy=1 then goto 30;
  if key=37 then
    BEgin 
    if (x[n, m]=4) and (x[n, m-1]=0) then 
      BEgin 
      x[n, m-1]:= 4;
      x[n, m]:= 0;
      m:= m-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n, m-1]=3) and (x[n, m-2]=0) then 
      BEgin 
      x[n, m-1]:= 4;
      x[n, m]:= 0;
      x[n, m-2]:= 3;
      m:= m-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n, m-1]=3) and (x[n, m-2]=2) then 
      BEgin 
      x[n, m-1]:= 4;
      x[n, m]:= 0;
      x[n, m-2]:= 5;
      m:= m-1;
      sony:= sony+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n, m-1]=5) and (x[n, m-2]=2) then 
      BEgin 
      x[n, m-1]:= 6;
      x[n, m]:= 0;
      x[n, m-2]:= 5;
      m:= m-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n, m-1]=5) and (x[n, m-2]=0) then 
      BEgin 
      x[n, m-1]:= 6;
      x[n, m]:= 0;
      x[n, m-2]:= 3;
      m:= m-1;
      Step:= step+1;
      sony:= sony-1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n, m-1]=2) then 
      BEgin 
      x[n, m-1]:= 6;
      x[n, m]:= 0;
      m:= m-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n, m-1]=5) and (x[n, m-2]=2)then 
      BEgin 
      x[n, m-1]:= 6;
      x[n, m]:= 2;
      x[n, m-2]:= 5;
      m:= m-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n, m-1]=3) and (x[n, m-2]=0)then 
      BEgin 
      x[n, m-1]:= 4;
      x[n, m]:= 2;
      x[n, m-2]:= 3;
      m:= m-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n, m-1]=0) then 
      BEgin 
      x[n, m-1]:= 4;
      x[n, m]:= 2;
      m:= m-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n, m-1]=2) then 
      BEgin 
      x[n, m-1]:= 6;
      x[n, m]:= 2;
      m:= m-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n, m-1]=3) and (x[n, m-2]=2)then 
      BEgin 
      x[n, m]:= 2;
      x[n, m-1]:= 4;
      x[n, m-2]:= 5;
      m:= m-1;
      sony:= sony+1;
      Step:= step+1;
      goto 10;
      end;
    end;
  
  if key=39 then
    BEgin 
    if (x[n, m+1]=0) and (x[n, m]=4) then 
      BEgin 
      x[n, m+1]:= 4;
      x[n, m]:= 0;
      m:= m+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n, m+1]=3) and (x[n, m+2]=2) then 
      BEgin 
      x[n, m]:= 0;
      x[n, m+1]:= 4;
      x[n, m+2]:= 5;
      m:= m+1;
      sony:= sony+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n, m+1]=3) and (x[n, m+2]=0) then 
      BEgin 
      x[n, m]:= 0;
      x[n, m+1]:= 4;
      x[n, m+2]:= 3;
      m:= m+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n, m+1]=2) then 
      BEgin 
      x[n, m]:= 0;
      x[n, m+1]:= 6;
      m:= m+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n, m+1]=5) and (x[n, m+2]=0)then 
      BEgin 
      x[n, m]:= 0;
      x[n, m+1]:= 6;
      x[n, m+2]:= 3;
      m:= m+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n, m+1]=5) and (x[n, m+2]=2)then 
      BEgin 
      x[n, m]:= 0;
      x[n, m+1]:= 6;
      x[n, m+2]:= 5;
      m:= m+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n, m+1]=2) then 
      BEgin 
      x[n, m]:= 2;
      x[n, m+1]:= 6;
      m:= m+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n, m+1]=0) then 
      BEgin 
      x[n, m]:= 2;
      x[n, m+1]:= 4;
      m:= m+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n, m+1]=3) and (x[n, m+2]=0)then 
      BEgin 
      x[n, m]:= 2;
      x[n, m+1]:= 4;
      x[n, m+2]:= 3;
      m:= m+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n, m+1]=3) and (x[n, m+2]=2)then 
      BEgin 
      x[n, m]:= 2;
      x[n, m+1]:= 4;
      x[n, m+2]:= 5;
      m:= m+1;
      sony:= sony+1;
      Step:= step+1;
      goto 10;
      end;
    end;
  
  if key=38 then
    BEgin 
    if (x[n, m]=4) and (x[n-1, m]=0) then 
      BEgin 
      x[n-1, m]:= 4;
      x[n, m]:= 0;
      n:= n-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n-1, m]=3) and (x[n-2, m]=0) then 
      BEgin 
      x[n-1, m]:= 4;
      x[n, m]:= 0;
      x[n-2, m]:= 3;
      n:= n-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n-1, m]=3) and (x[n-2, m]=2)then 
      BEgin 
      x[n-1, m]:= 4;
      x[n, m]:= 0;
      x[n-2, m]:= 5;
      n:= n-1;
      sony:= sony+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n-1, m]=5) and (x[n-2, m]=0) then 
      BEgin 
      x[n-1, m]:= 6;
      x[n, m]:= 0;
      x[n-2, m]:= 3;
      n:= n-1;
      sony:= sony-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n-1, m]=2) then 
      BEgin 
      x[n-1, m]:= 6;
      x[n, m]:= 0;
      n:= n-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n-1, m]=0) then 
      BEgin 
      x[n-1, m]:= 4;
      x[n, m]:= 2;
      n:= n-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n-1, m]=2) then 
      BEgin 
      x[n-1, m]:= 6;
      x[n, m]:= 2;
      n:= n-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n-1, m]= 5) and (x[n-2, m]= 2) then 
      BEgin 
      x[n-1, m]:= 6;
      x[n, m]:= 2;
      x[n-2, m]:= 5;
      n:= n-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n-1, m]= 5) and (x[n-2, m]= 2) then 
      BEgin 
      x[n-1, m]:= 6;
      x[n, m]:= 0;
      x[n-2, m]:= 5;
      n:= n-1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n-1, m]= 5) and (x[n-2, m]= 0) then 
      BEgin 
      x[n-1, m]:= 6;
      x[n, m]:= 2;
      x[n-2, m]:= 3;
      n:= n-1;
      sony:= sony-1; 
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n-1, m]=3) and (x[n-2, m]=2)then 
      BEgin 
      x[n, m]:= 2;
      x[n-1, m]:= 4;
      x[n-2, m]:= 5;
      n:= n-1;
      sony:= sony+1;
      Step:= step+1;
      goto 10;
      end;
    end;
  
  if key=40 then
    BEgin 
    if (x[n, m]=4) and (x[n+1, m]=0) then 
      BEgin 
      x[n+1, m]:= 4;
      x[n, m]:= 0;
      n:= n+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n+1, m]=2) then 
      BEgin 
      x[n+1, m]:= 6;
      x[n, m]:= 0;
      n:= n+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n+1, m]=3) and (x[n+2, m]=2)then 
      BEgin 
      x[n+1, m]:= 4;
      x[n, m]:= 0;
      x[n+2, m]:= 5;
      n:= n+1;
      sony:= sony+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n+1, m]=3) and (x[n+2, m]=0)then 
      BEgin 
      x[n+1, m]:= 4;
      x[n, m]:= 0;
      x[n+2, m]:= 3;
      n:= n+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n+1, m]=5) and (x[n+2, m]=0)then 
      BEgin 
      x[n+1, m]:= 6;
      x[n, m]:= 0;
      x[n+2, m]:= 3;
      n:= n+1;
      Step:= step+1;
      sony:= sony-1;
      goto 10;
      end;
    if (x[n, m]=4) and (x[n+1, m]=5) and (x[n+2, m]=2)then 
      BEgin 
      x[n+1, m]:= 6;
      x[n, m]:= 0;
      x[n+2, m]:= 5;
      n:= n+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n+1, m]=2) then 
      BEgin 
      x[n+1, m]:= 6;
      x[n, m]:= 2;
      n:= n+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n+1, m]=3) and (x[n+2, m]=2)then 
      BEgin 
      x[n, m]:= 2;
      x[n+1, m]:= 4;
      x[n+2, m]:= 5;
      n:= n+1;
      sony:= sony+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n+1, m]=5) and (x[n+2, m]=2)then 
      BEgin 
      x[n+1, m]:= 6;
      x[n, m]:= 2;
      x[n+2, m]:= 5;
      n:= n+1;
      Step:= step+1;
      goto 10;
      end;
    if (x[n, m]=6) and (x[n+1, m]=0) then 
      BEgin 
      x[n+1, m]:= 4;
      x[n, m]:= 2;
      n:= n+1;
      Step:= step+1;
      goto 10;
      end;
    end;
10:
  komek_2;
  if sony=obsy then BEgin gutardy:= 1; lv:= lv+1; c:= 1;end;
30:
  end;
BEgin 
MaximizeWindow;
p:= new PictureABC(0, 0,'1.png');
Font.Size:= Window.Width div 54;
Font.Color:= clYellow;
Brush.Color:= clSaddleBrown; 
a1:= Window.Width div 4;      a2:= Window.Width-a1;
b1:= Window.Height div 30;    b2:= b1+(Window.Height div 15);
Rectangle (a1, b1, a2, b2);
t:= 'Ýükçi';
TextOut (((a1+a2) div 2)-(TextWidth(t) div 2), ((b1+b2) div 2)-(TextHeight(t) div 2), t);

a3:= Window.Width div 3;                                  a4:= Window.Width-a3;
b3:= b1+(Window.Height div 15)+(Window.Height div 12);    b4:= b2+(Window.Height div 15)+(Window.Height div 12);
Rectangle (a3, b3, a4, b4);
t:= 'Täze oýun';
TextOut (((a3+a4) div 2)-(TextWidth(t) div 2), ((b3+b4) div 2)-(TextHeight(t) div 2), t);

a5:= Window.Width div 3;                                  a6:= Window.Width-a3;
b5:= b3+(Window.Height div 15)+(Window.Height div 12);    b6:= b4+(Window.Height div 15)+(Window.Height div 12);
Rectangle (a5, b5, a6, b6);
t:= 'Oýun barada';
TextOut (((a5+a6) div 2)-(TextWidth(t) div 2), ((b5+b6) div 2)-(TextHeight(t) div 2), t);

a7:= Window.Width div 3;                                  a8:= Window.Width-a3;
b7:= b5+(Window.Height div 15)+(Window.Height div 12);    b8:= b6+(Window.Height div 15)+(Window.Height div 12);
Rectangle (a7, b7, a8, b8);
t:= 'Kömek';
TextOut (((a7+a8) div 2)-(TextWidth(t) div 2), ((b7+b8) div 2)-(TextHeight(t) div 2), t);

a9:= Window.Width div 3;                                  a10:= Window.Width-a3;
b9:= b7+(Window.Height div 15)+(Window.Height div 12);    b10:= b8+(Window.Height div 15)+(Window.Height div 12);
Rectangle (a9, b9, a10, b10);
t:= 'Çykmak';
TextOut (((a9+a10) div 2)-(TextWidth(t) div 2), ((b9+b10) div 2)-(TextHeight(t) div 2), t);

For a:= 0 to 10 do
  BEgin 
  x[a, 0]:= 1;
  x[a, 9]:= 1;
  x[a, 10]:= 1;
  x[0, a]:= 1;
  x[9, a]:= 1;
  x[10, a]:= 1;
  end;
lv:= 1;
OnMouseDown:= MouseDown;
  OnMouseUp:= MouseUp;
  OnKeyDown:= KeyDown;
end.