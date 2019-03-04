% 初始化搜索起点
esp = 1e-4;
ite_max = 100;


x0 = [8 -9]';
disp("=start point：=");
disp (x0);
disp("=bfgs=");
[ite x] = bfgs(x0, ite_max, esp);
printf("ite %d times\n", ite);
disp("root is:");
disp(x);
disp("minf(x) is");
disp(f_himm(x));

disp("=steepest_descend=");
[ite x] = steepest_descend(x0, ite_max, esp);
printf("ite %d times\n", ite);
disp("root is:");
disp(x);
disp("minf(x) is");
disp(f_himm(x));
disp("-----------------------");

x0 = [8 9]';
disp("=start point：=");
disp (x0);
disp("=bfgs=");
[ite x] = bfgs(x0, ite_max, esp);
printf("ite %d times\n", ite);
disp("root is:");
disp(x);
disp("minf(x) is");
disp(f_himm(x));

disp("=steepest_descend=");
[ite x] = steepest_descend(x0, ite_max, esp);
printf("ite %d times\n", ite);
disp("root is:");
disp(x);
disp("minf(x) is");
disp(f_himm(x));
disp("-----------------------");

x0 = [-8 -9]';
disp("=start point：=");
disp (x0);
disp("bfgs");
[ite x] = bfgs(x0, ite_max, esp);
printf("ite %d times\n", ite);
disp("root is:");
disp(x);
disp("minf(x) is");
disp(f_himm(x));

disp("=steepest_descend=");
[ite x] = steepest_descend(x0, ite_max, esp);
printf("ite %d times\n", ite);
disp("root is:");
disp(x);
disp("minf(x) is");
disp(f_himm(x));
disp("-----------------------");

x0 = [-8 9]';
disp("=start point：=");
disp (x0);
disp("bfgs");
[ite x] = bfgs(x0, ite_max, esp);
printf("ite %d times\n", ite);
disp("root is:");
disp(x);
disp("minf(x) is");
disp(f_himm(x));

disp("=steepest_descend=");
[ite x] = steepest_descend(x0, ite_max, esp);
printf("ite %d times\n", ite);
disp("root is:");
disp(x);
disp("minf(x) is");
disp(f_himm(x));