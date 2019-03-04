% 初始化搜索起点
x0 = [10 7]';
% 初始化搜索方向
d0 = [-1 -1]';

esp = 1e-4;
ite_max = 100;


disp("bfgs");
[ite x] = bfgs(x0, ite_max, esp);
printf("ite %d times\n", ite);
disp("root is:");
disp(x);
disp("minf(x) is");
disp(f_himm(x));

disp("steepest_descend");
[ite x] = steepest_descend(x0, d0, ite_max, esp);
printf("ite %d times\n", ite);
disp("root is:");
disp(x);
disp("minf(x) is");
disp(f_himm(x));