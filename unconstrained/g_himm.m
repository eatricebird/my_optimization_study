% 目标函数的解析梯度，x是向量
function g = g_himm(x)
x1=x(1);
x2=x(2);
w1=x1^2+x2-11;
w2=x1+x2^2-7;
g1=4*w1*x1+2*w2;
g2=2*w1+4*w2*x2;
g=[g1 g2]';