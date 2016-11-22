prologues :=3; %fonts are packed together with eps, workaround for the bug with epstopdf tool
beginfig(1);
draw dir(0)--dir(72)--dir(2*72)--dir(3*72)--dir(4*72)--cycle;
endfig;
end;