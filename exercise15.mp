beginfig(1);

pair o,a,b;
u := 2cm;
o := (0,0);
a := dir(40)*u;
b := (u,0);

draw o--a*2;
draw o--b*2;

drawarrow b..a;

endfig;
end;