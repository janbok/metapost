prologues :=3;

beginfig(1);

pair A,B;

u := 2cm;

A := dir(20)*2u;
B := dir(40)*2u;

draw (0,0)--A;
draw (0,0)--B;

path p;
p := 0.5A{dir 90}..0.5B--B..{dir -90}A--0.5A--cycle;

draw p withpen pencircle scaled 1.5;
fill p withcolor (1,1,0);

endfig;
end;

