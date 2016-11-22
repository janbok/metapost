beginfig(1);

u := 2cm;

pair p[];
p1 := dir(90)*u; p2 := dir(90+120)*u; p3 := dir(90-120)*u;

draw p2--p3--p1;

draw p2{up}...p1;
draw p2{dir 30}...p1;

draw p1 withpen pencircle scaled 5;
draw p2 withpen pencircle scaled 5;
draw p3 withpen pencircle scaled 5;

endfig;
end;