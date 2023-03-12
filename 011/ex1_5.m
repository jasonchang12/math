clc, clear
c=1:4; c=[c,c]'; %构造价值列向量
a=[1 -1 -1 1; 1 -1 1 -3; 1 -1 -2 3];
a=[a,-a]; %构造变换后新的系数矩阵
b=[-2 -1 -1/2]';
[y,z]=linprog(c,a,b,[],[],zeros(8,1)) %这里没有等式约束，对应的矩阵为空矩阵
x=y(1:4)-y(5:end)  %变换到原问题的解，x=u-v
