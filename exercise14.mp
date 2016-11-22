u := 1cm;
pair p[];
p0 = (0,0); p1 = (2u,3u); p2 = (3u,2u);

beginfig(1);
draw p0..p1..p2; % draw open curve
for i=0 upto 2:
	draw p[i] withpen pencircle scaled 3;
endfor; % draw defining points

endfig;
beginfig(2);
draw p0..p1..p2..cycle; % draw closed curve
for i=0 upto 2:
	draw p[i] withpen pencircle scaled 3;
endfor; % draw defining points
endfig;
end;