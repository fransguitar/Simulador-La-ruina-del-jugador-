function [R,i]=Ruina(capj,capm,p,g)
t=(0);
capactj=(capj);
aux=capj;
i=0;
capt=capj+capm;
while(aux>0 && aux<capt)
    i=i+1;
    res = 2*binornd(1,p)-1;
    aux=aux+res;
    t=[t;i];
    capactj=[capactj;aux];
end 
limtx=0:0.1:i+50;
limity=repeat(length(limtx),capt);
if g==1
    figure
    plot(limtx,limity,'g',t,capactj,'-');
end
if aux==0
    R=1;
else
    R=0;
end

end

function r =repeat(a,b)
r=[];
for i=1:a
    r(i)=b;
end 

end 

