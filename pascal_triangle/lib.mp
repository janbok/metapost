% implementation of figure naming and figure transparency
string name,tag; name := ""; tag := "";
def updatefigname =
	if tag="": filenametemplate (name & ".eps");
	else: filenametemplate (name & "_" & tag & ".eps");
	fi;
enddef;
	
def figname(expr n) = name := n; updatefigname; enddef;
def figtag(expr t) = tag := t; updatefigname; enddef;

picture transparent_picture;
color transparent_color; transparent_color := 0.9white;
def drawtransparent(expr num) =
	transparent_picture := currentpicture;
endfig;

if tag="": filenametemplate (name & "_transparent.eps");
else: filenametemplate (name & "_" & tag & "_transparent.eps");
fi;
beginfig(num);
	draw transparent_picture withcolor transparent_color;
endfig;

updatefigname;
enddef;

def from(expr p,d,len) =
	p+dir(d)*len
enddef;

def dirs(expr p,d,len) =
	p--from(p,d,len)
enddef;

def drawvertices(expr s,n) =
	for i:=s upto n:
		draw vertex(PQ[i]);
	endfor
enddef;

def drawfvertices(expr s,n,flags) =
	for i:=s upto n:
		draw vertex(PQ[i]) flags;
	endfor
enddef;

def vertex(expr p) = p withpen pencircle scaled 4pt enddef;
def drawemptyvertex(expr p) = unfill fullcircle scaled 4pt shifted p; draw fullcircle scaled 3.7pt shifted p; enddef;
def drawendpointvertex(expr p) = draw vertex(p) withcolor red; draw fullcircle scaled 6pt shifted p; enddef;
def createpath(expr p) = shakepath(p, 0.015cm,0.1cm) enddef;
vardef shakepath(expr p,d,l) =
	save r,b;
	path r; r := point(arctime 0 of p) of p;
	b := -1;
	for i:=l step l until arclength(p):
		r := r--(point(arctime i of p) of p)+dir(angle(direction(arctime i of p) of p rotated 90))*d*b;
		b := -b;
	endfor
	r--point(arctime arclength(p) of p) of p
enddef;
	
pen normalpen; normalpen := pencircle scaled 0.6pt;
pen boldpen; boldpen := pencircle scaled 1.5pt;
pen bolderpen; bolderpen := pencircle scaled 2pt;
def dotline = withdots scaled 0.82 withpen boldpen enddef;

vardef unclosedbubblec(expr p,c) =
	bubblec((p..reverse p..cycle),c)
enddef;	

vardef bubblec(expr p,c) =
	save r;
	path r; r := (point(arctime 0 of p) of p)+dir(angle(direction(arctime 0 of p) of p rotated 90))*c;
	for i:=0.01cm step 0.025cm until arclength(p):
		r := r..(point(arctime i of p) of p)+dir(angle(direction(arctime i of p) of p rotated 90))*c;
	endfor
	r..(point(arctime arclength(p) of p) of p)+dir(angle(direction(arctime arclength(p) of p) of p rotated 90))*c..cycle
enddef;

vardef bubble(expr p) = bubblec(p,0.12cm) enddef;
vardef unclosedbubble(expr p) = unclosedbubblec(p,0.12cm) enddef;

vardef bubbleseg(expr A,B,dist) =
	segment_angle := angle(B-A);
	from(A,segment_angle+90,dist)---from(B,segment_angle+90,dist)..
	from(B,segment_angle-90,dist)---from(A,segment_angle-90,dist)..cycle
enddef;

path centersquare; centersquare := (0.5,0.5)--(0.5,-0.5)--(-0.5,-0.5)--(-0.5,0.5)--cycle;
path cutcircle; cutcircle := fullcircle&fullcircle;
path smycka; smycka := origin{dir -60}..(1,0)..{dir -120}origin;

def drawvertexarrow(expr p) =
	drawarrow (p cutafter (cutcircle scaled 4.3pt shifted (point 0 of reverse(p))))
enddef;

def drawbigvertexarrow(expr p, s, t) =
	drawarrow (p cutbefore (cutcircle scaled s shifted (point 0 of p)) cutafter (cutcircle scaled t shifted (point 0 of reverse(p))))
enddef;

def cutvertex(expr p, s, t) =
	(p cutbefore (cutcircle scaled s shifted (point 0 of p)) cutafter (cutcircle scaled t shifted (point 0 of reverse(p))))
enddef;

def drawlabeledvertex(expr p, l) =
	unfill fullcircle scaled 0.4cm shifted p;
	draw fullcircle scaled 0.4cm shifted p;
	label(l, p);
enddef;

def drawbiglabeledvertex(expr p, l, xs, ys) =
	unfill fullcircle xscaled xs yscaled ys shifted p;
	draw fullcircle xscaled xs yscaled ys shifted p;
	label(l, p);
enddef;

def drawwhitecross(expr cen, len, width) =
	path cross;
	cross := ((0,width)--(len,len+width)--(len+width,len)--(width,0)--
		(len+width,-len)--(len,-len-width)--(0,-width)--(-len,-len-width)--
		(-len-width,-len)--(-width,0)--(-len-width,len)--(-len,len+width)--cycle)
		shifted cen;
	unfill cross;
	draw cross;
enddef;
