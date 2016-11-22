prologues :=3;

beginfig(1)

u := 1cm;

draw (0,-u)--(0,3.5u);
draw (-u,0)--(5u,0);

draw (0,3u)--(4u,3u) dashed evenly;
draw (4u,0)--(4u,3u) dashed evenly;

path p;
p := (0,0)--(4u,3u);
draw p;

label.rt(btex $a+ib=z$ etex,(4u,3u));
label.llft(btex $0$ etex,(0,0));
label.bot(btex $a$ etex,(4u,0));
label.lft(btex $ib$ etex,(0,3u));
label.lft(btex $C$ etex,(0,3.5u));

% xscaled and yscaled are hardcoded
label(btex $\lbrace$ etex xscaled 3 yscaled 14.3 rotated (angle((4u,3u))-90), 1/2[(0,0),(4u,3u)] + dir(90+angle((4u,3u)))*2.5mm);
label(btex $|z|$ etex,1/2[(0,0),(4u,3u)] + dir(90+angle((4u,3u)))*7mm);

draw dir(angle((4u,3u)))*u..{down}dir(0)*u;

label(btex $\phi$ etex, dir(0.5angle((4u,3u)))*1.2u);

endfig;
end;