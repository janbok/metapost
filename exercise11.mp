prologues :=3; %fonts are packed together with eps, workaround for the bug with epstopdf tool
beginfig(1);
pair A,B,C,midAB,midAC,midBC,G;

A := (0,0);
B := (6cm,0);
C := (4cm,6cm);

midAB := (A+B)/2;
midAC := (A+C)/2;
midBC := (B+C)/2;

draw A--B--C--cycle;
draw A--1/2[B,C];
draw B--midAC;
draw C--midAB;

dotlabel.lft("A",A);
dotlabel.urt("B",B);
dotlabel.top("C",C);
dotlabel.bot("C'",midAB);
dotlabel.urt("A'",midBC);
dotlabel.ulft("B'",midAC);

G = whatever[A,midBC];
G = whatever[B,midAC];

draw G;
labeloffset := 0.5cm;
label.rt("G",G);
endfig;
end;