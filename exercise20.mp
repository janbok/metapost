prologues :=3;

verbatimtex
%&latex
\documentclass{article}
\begin{document}
etex

% some function definitions
vardef exp(expr x) = (mexp(256)**x) enddef;
vardef ln(expr x) = (mlog(x)/256) enddef;
vardef log(expr x) = (ln(x)/ln(10)) enddef;
vardef f(expr x) = (exp(x)/(1+x)) enddef;
ux := 1cm; uy := 1cm;

beginfig(1)
numeric xmin, xmax, ymin, ymax;
xmin := 0; xmax := 10;
ymin := 0; ymax := 4;

% draw axes
draw (xmin,0)*ux -- (xmax+1/2,0)*ux;
draw (0,ymin)*uy -- (0,ymax+1/10)*uy;

% draw tickmarks and labels on horizontal axis
for i=0 upto xmax:
	draw (i,-0.05)*ux--(i,0.05)*ux;
	label.bot(decimal(i),(i,0)*ux);
endfor;

% draw tickmarks and labels on vertical axis
for i=0 upto ymax:
	draw (-0.05,i)*uy--(0.05,i)*uy;
	label.lft(decimal(i),(0,i)*uy);
endfor;

% compute and draw the graph of the function
xinc := 0.1;
path pts_f;
pts_f := (xmin*ux,sqrt(xmin)*uy)
for x=xmin+xinc step xinc until xmax:
	.. (x*ux,sqrt(x)*uy)
endfor;
draw pts_f withpen pencircle scaled 2;

% draw title
label.lrt(btex $y = \sqrt{x}$ etex, (0.5*xmax*ux,sqrt(0.5*xmax)*uy));

% draw axis explanation
 labeloffset := 0.5cm;
label.bot(btex $x$ etex, (0.5xmax,0)*ux);
label.lft(btex $y$ etex, (0,1)*uy);

endfig;
end;
