input lib;

filenametemplate "pascal.eps";
beginfig(1);
	m := 6; u := 0.05cm;

	for q:=0 upto 2:

	if (q=0): m := 6; fi;
	if (q=1): m := 2; fi;
	if (q=2): m := 3; fi;
	numeric N[][];
	color col[];
	col0 := white;
	col1 := black;
	%col2 := blue;
	col2 := red+green;
	col3 := red;
	col4 := blue;
	col5 := green;
	%for i:=0 upto m-1:
	%	col[i] := (i/(m-1))[green,red];
	%endfor
	%for i:=1 upto m-1:
%		col[i] := black;
%	endfor

	N[0][-1] := 0;
	N[0][1] := 0;
	N[0][0] := 1;
	n := 90;
	%label(decimal(N[0][1]), origin);
	
	path hexagon;
	hexagon := for i:=0 upto 5: (0,1) rotated 60i-- endfor cycle;
	def drawnumber(expr num,pos) =
		fill hexagon scaled 0.6u shifted pos withcolor col[num];
	enddef;
	drawnumber(N[0][0],origin);
	
	for i:=1 upto n-1:
		for j:=0 upto i:
			N[i][j] = (N[i-1][j-1]+N[i-1][j]) mod m;
			drawnumber(N[i][j], (-i*u/2+j*u,-i*0.9u));
		endfor
		N[i][-1] = 0;
		N[i][i+1] = 0;
	endfor;

	currentpicture := currentpicture shifted (-95u,0);

	endfor;

endfig;
end;
