prologues :=3;

beginfig(1);

% not sure how it should be done, this way is not elegant

pair A,B,C,D;
u:=3cm;
A:=(-u,0);
B:=(u,0);
C:=A;
D:=B;
alpha:=60;

transform t;
t = identity rotated alpha shifted (2u,-4u);

path p;
p := fullcircle xscaled 2u yscaled u;

draw p;
p:= p transformed t;
A:= A transformed t;
B:= B transformed t;
draw p;

draw C{down}..A{dir (alpha-90)};
draw D{down}..B{dir (alpha-90)};

endfig;
end;

