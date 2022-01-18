function f=gr5_cb(b,afisare_linii_drepte,afisare_curba,afisare)
% calcularea curbei bezier de grad 5
t=0:0.01:1;%parametrul
B0=(1-t).^5;
B1=5*(1-t).^4.*t;
B2=10*(1-t).^3.*(t.^2);
B3=10*(1-t).^2.*(t.^3);
B4=5*(1-t).*(t.^4);
B5=t.^5;
% polinomul Bernstein sub forma de vector
B=[B0;B1;B2;B3;B4;B5];
% b=[ ; ]
f=b*B; % Curba Bezier
hold on
% reprezentarea grafica
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