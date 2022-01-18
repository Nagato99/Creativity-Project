function f=gr6_cb(b,afisare_linii_drepte,afisare_curba,afisare)
t=0:0.01:1;
B0=(1-t).^6;
B1=6*(1-t).^5.*t;
B2=15*(1-t).^4.*(t.^2);
B3=20*(1-t).^3.*(t.^3);
B4=15*(1-t).^2.*(t.^4);
B5=6*(1-t).*(t.^5);
B6=t.^6;


B=[B0;B1;B2;B3;B4;B5;B6];

f=b*B;
hold on
if afisare_linii_drepte==1
    plot(b(1,[1 end]),b(2,[1 end]),'o','MarkerFaceColor', 'k')
    plot(b(1,(2:end-1)),b(2, (2:end-1)),'ko')
    plot(b(1,:),b(2,:),'r-')
end
if afisare_curba==1
plot(f(1,:),f(2,:),'k')
end
if afisare==1
    comet(f(1,:),f(2,:))
end
hold off


end