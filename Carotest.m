L=300;
N=7;
l4=150;
l1=150;
l01=100;
l02=200;
l2=245;
l3=180;
i=3;
j=2;
r=30/((N+1)/3);
for t=0:0.1:2*pi
    Xij=(L/(N+1))*(j+0.5);
    Yij=(L/(N+1))*(i+0.5);
    X=Xij+r*cos(t);
    Y=Yij+r*sin(t);
    Z=0;
    
    
    A=X+l01;    
    B=Y-l02;
    C2=(A^2+B^2-l2^2-l3^2)/(2*l2*l3);
    S2= sqrt(abs(1-C2^2));
    t2=atan(S2/C2);
    Tan1=(-A*l3*S2+B*(l3*C2+l2))/(A*(l3*C2+l2)+B*l3*S2);
    t1=atan(Tan1);
    Px=l2*cos(t1)+l3*cos(t1+t2)-l01;
    Py=l2*sin(t1)+l3*sin(t1+t2)+l02;
    Pz=l1-l4;
    u=L/(N+1);
    
    title('Toa do thuc te');
    for m=1:1:(N+1)
        for n=1:1:(N+1)
            line([l01,300+l01],[u*m-l02,u*m-l02]);
            line([u*n+l01,u*n+l01],[300-l02,0-l02]);
        end
    end
    plot3(X,Y,0,'.')
    hold on
    grid on
    pause(0.2)
end
