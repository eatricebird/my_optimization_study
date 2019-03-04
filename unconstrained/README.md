

#### 本文是陆吾生最优化课程里，利用最优化解方程组的例子的源代码。  
#### 题目：解方程组：

<a href="https://www.codecogs.com/eqnedit.php?latex=\left\{\begin{matrix}&space;x_1^2&plus;x_2=11\\&space;x_1&plus;x_2^2=7&space;\end{matrix}\right." target="_blank"><img src="https://latex.codecogs.com/gif.latex?\left\{\begin{matrix}&space;x_1^2&plus;x_2=11\\&space;x_1&plus;x_2^2=7&space;\end{matrix}\right." title="\left\{\begin{matrix} x_1^2+x_2=11\\ x_1+x_2^2=7 \end{matrix}\right." /></a>

用消元法解得有4组解

<a href="https://www.codecogs.com/eqnedit.php?latex=x^{(1)}&space;=\begin{bmatrix}&space;3.5844\\&space;-1.8981&space;\end{bmatrix},&space;x^{(2)}&space;=\begin{bmatrix}&space;3\\&space;2&space;\end{bmatrix},&space;x^{(3)}&space;=\begin{bmatrix}&space;-3.7793\\&space;-3.2832&space;\end{bmatrix},&space;x^{(4)}&space;=\begin{bmatrix}&space;-2.8051\\&space;3.1313&space;\end{bmatrix}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x^{(1)}&space;=\begin{bmatrix}&space;3.5844\\&space;-1.8981&space;\end{bmatrix},&space;x^{(2)}&space;=\begin{bmatrix}&space;3\\&space;2&space;\end{bmatrix},&space;x^{(3)}&space;=\begin{bmatrix}&space;-3.7793\\&space;-3.2832&space;\end{bmatrix},&space;x^{(4)}&space;=\begin{bmatrix}&space;-2.8051\\&space;3.1313&space;\end{bmatrix}" title="x^{(1)} =\begin{bmatrix} 3.5844\\ -1.8981 \end{bmatrix}, x^{(2)} =\begin{bmatrix} 3\\ 2 \end{bmatrix}, x^{(3)} =\begin{bmatrix} -3.7793\\ -3.2832 \end{bmatrix}, x^{(4)} =\begin{bmatrix} -2.8051\\ 3.1313 \end{bmatrix}" /></a>


#### 用最优化的方法解该方程组：  
因为是用数值解法解方程组，所以是求近视解。  
分别使用了steepest，BFGS两种方法求最优化解。    

定义目标函数：  
<a href="https://www.codecogs.com/eqnedit.php?latex=f(x)=(x_1^2&plus;x_2-11)^2&plus;(x_1&plus;x_2^2-7)^2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?f(x)=(x_1^2&plus;x_2-11)^2&plus;(x_1&plus;x_2^2-7)^2" title="f(x)=(x_1^2+x_2-11)^2+(x_1+x_2^2-7)^2" /></a>

如果<a href="https://www.codecogs.com/eqnedit.php?latex=f(x^*)=minf(x)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?f(x^*)=minf(x)" title="f(x^*)=minf(x)" /></a>， 那么<a href="https://www.codecogs.com/eqnedit.php?latex=x^*" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x^*" title="x^*" /></a>也是原方程组的解。  

这是因为  
<a href="https://www.codecogs.com/eqnedit.php?latex=minf(x)\Leftrightarrow&space;f(x)=0&space;\Leftrightarrow&space;\left\{\begin{matrix}&space;x_1^2&plus;x_2-11=0\\&space;x_1&plus;x_2^2-7=0&space;\end{matrix}\right." target="_blank"><img src="https://latex.codecogs.com/gif.latex?minf(x)\Leftrightarrow&space;f(x)=0&space;\Leftrightarrow&space;\left\{\begin{matrix}&space;x_1^2&plus;x_2-11=0\\&space;x_1&plus;x_2^2-7=0&space;\end{matrix}\right." title="minf(x)\Leftrightarrow f(x)=0 \Leftrightarrow \left\{\begin{matrix} x_1^2+x_2-11=0\\ x_1+x_2^2-7=0 \end{matrix}\right." /></a>

所以源代码实际是在求minf(x)。  

#### 文件说明
solve_equation.m：解方程主程序  
f_himm.m: 实现目标函数  
g_hime.m: 实现目标函数的解析梯度  
g_hime_num.m: 实现目标函数的数值梯度  
inex_lsearch.m: 实现1维线性搜索  
steepest_descend.m： 用steepest寻找最优解  
bfgs.m：用bfgs方法找最优化解  

#### bfgs 相比较 steepest的优势:  
+ bfgs 迭代次数更少

#### 运行结果举例：

```

```
