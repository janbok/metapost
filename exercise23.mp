prologues :=3;

u := 1cm;
defaultscale := 10pt/fontsize(defaultfont);

beginfig(1);

u := 1cm;

r := 100; g := 140; b := 20;

draw (0,0) withpen pencircle scaled 15bp withcolor (r/256,g/256,c/256);
c1 := 1/3(r+g+b)/256;
draw (u,0) withpen pencircle scaled 15bp withcolor (c1,c1,c1);
c2 := (0.3r+0.59g+0.11b)/256; 
draw (2u,0) withpen pencircle scaled 15bp withcolor (c2,c2,c2);

endfig;
end;