beginfig(1);

u := 2cm;

path p;
p := (0,-2u){left}..{right}(0,0){right}..(u,u)..(0,2u){left}..(0,-2u)--cycle;
draw p;
fill p withcolor black;

draw B..D..B--cycle;

draw (0,u) withpen pencircle scaled 12bp withcolor white;
draw (0,-u) withpen pencircle scaled 12bp;

endfig;
end;