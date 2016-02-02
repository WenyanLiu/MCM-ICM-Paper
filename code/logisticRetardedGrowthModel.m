x=1960:5:2014; 
y=[4.4966 4.9792 5.5394 6.2170 6.9722 7.8208 8.7060 9.6087 10.5348 11.4432 12.3098]; 
plot(x,y,'*',x,y);
hold on;
a0=[0.01,0.001];
a=lsqcurvefit('curvefit_fun2',a0,x,y);
disp(['a=' num2str(a)]);
xi=1960:5:2020;
yi=curvefit_fun2(a,xi);
plot(xi,yi,'r');
x1=2031;
y1=curvefit_fun2(a,x1)
hold off