% steepest decend法确定最优解
%
% =======================================================================
% 输入：
% x0：搜索起点；
% d0：搜索初始方向；
% ite_max: 最大允许迭代次数
% eps：精度
% 输出：
% x：最优解；
% ite： 迭代多少次找到解
% =======================================================================
function [ite,xx] = steepest_descend(x0, d0, ite_max, eps)
ite_count = 0;
x = x0;
d = d0;

while norm(d) > eps && ite_count < ite_max ,
  % 1-D line search for step
  alpha = inex_lsearch(x, d, 'f_himm', 'g_himm');
  x_new = x + alpha * d;
  % steepest descend for direct
  d_new = -g_himm(x);
  x = x_new;
  d = d_new;
  ite_count = ite_count + 1;
end;
xx = x;
ite = ite_count;
