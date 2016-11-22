prologues :=3;

pair A,B,C,C',bA,bB,sbA,sbB;

u := 1cm; A=(0,0); B=(5u,0); C=(2u,3u);
C' = whatever[A,B] = C + whatever*dir(1/2*angle(A-C)+1/2*angle(B-C));

beginfig(1);

sbA := dir(1/2*angle(A-C)+1/2*angle(C'-C));
sbB := dir(1/2*angle(B-C)+1/2*angle(C'-C));

draw (C + 0.3*u*sbA)--(C + 0.7*u*sbA);
draw (C + 0.3*u*sbB)--(C + 0.7*u*sbB);

draw (C + 0.5*u*(dir(angle(A-C))))..(C + 0.5*u*(dir(angle(C'-C))))..(C + 0.5*u*(dir(angle(B-C))));

draw A--B--C--cycle; draw C--C';
dotlabel.lft("A",A); dotlabel.urt("B",B);
dotlabel.top("C",C); dotlabel.bot("C'",C');

endfig;
end;
