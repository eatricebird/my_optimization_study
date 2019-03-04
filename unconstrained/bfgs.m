function [ite,xx] = bfgs(x0, ite_max, eps)
% BFGS法确定多个变量的最优解
%
% =======================================================================
% 输入：
% x0：搜索起点；
% ite_max: 最大允许迭代次数
% eps：精度
% 输出：
% x：最优解；
% ite： 迭代多少次找到解
% =======================================================================
ite_count = 1; % 循环次数
gk = g_himm(x0); % 初始梯度
H = eye(length(x0)); % 初始H阵
d = -H'*gk; % 初始搜索方向
alpha = inex_lsearch(x0, d, 'f_himm', 'g_himm'); % 初始搜索步长

x = x0;
while norm(gk) > eps && ite_count < ite_max,
  x = x + alpha*d; % 新的循环点
  gkk = g_himm(x); % 新的梯度
  y = gkk - gk; % 梯度差
  s = alpha*d; % 迭代点差
  %H阵更新,bfgs算法
  H = H + (1 +(y'*H*y)/(y'*s))*(s*s')/(y'*s) - (s*y'*H + H*y*s')/(y'*s);
  d = -H'*gkk; % 新的搜索方向
  alpha = inex_lsearch(x, d, 'f_himm', 'g_himm'); % 新的搜索步长
  gk = gkk; % 更新梯度
  ite_count = ite_count + 1; % 循环次数加1
end
xx = x + alpha*d; % 极小值
ite = ite_count;
end
