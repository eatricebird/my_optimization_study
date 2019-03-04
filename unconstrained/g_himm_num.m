% 目标函数的数值梯度，不参与最优化运算，主要用于检验解析梯度计算是否正确
% 方法是：
% x = randn(2,1)；
% 如果 norm(g_himm(x)-g_himm_num(x)) < 10e-6 就认为解析梯度计算正确；

function g = g_himm_num(x)
n = length(x);
dt = 1e-8;
I = eye(n);
f0 = f_himm(x);
for i = 1:n
  g(i) = (f_himm(x+dt*I(:,i))-f0)/dt;
end
g = g(:);
