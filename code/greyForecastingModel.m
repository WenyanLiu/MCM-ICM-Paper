syms a u;
c=[a u]';
A=[4287,4669,4766,4940,5240,6184,7216,8342,9491,
12387,12241,13654,17085,18358,18318,18618,20669];
Ago=cumsum(A);
n=length(A);
for i=1:(n-1)
C(i)=(Ago(i)+Ago(i+1))/2;
end
Yn=A;Yn(1)=[];
Yn=Yn';
E=[-C;ones(1,n-1)];
   c=inv(E*E')*E*Yn;
c=c';
a=c(1);u=c(2);
F=[];F(1)=A(1);
for i=2:(n+17)
F(i)=(A(1)-u/a)/exp(a*(i-1))+u/a ;
end
G=[];G(1)=A(1);
for i=2:(n+17)
G(i)=F(i)-F(i-1);
end
t1=1998:2014;
t2=1998:2031;
G
plot(t1,A,'o',t2,G)