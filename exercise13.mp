prologues :=3; %fonts are packed together with eps, workaround for the bug with epstopdf tool
beginfig(1);
pair A;
A := (1,1);

draw (A+dir(3*45)*40)--(A+dir(7*45)*40);
draw A--(dir(105)*40);

draw A withpen pencircle scaled 3;

draw (1,1);

endfig;
end;