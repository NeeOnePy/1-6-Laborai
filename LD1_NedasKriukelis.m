x = 1:32;
y = x.^2;

plot (x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]  |  F_2 [-x-]')
%% 
close all
clear
N = 1;
v = (N+1) : 0.5 : (N+4);
%% 
close all
clear
N=1;
A = [N, N+1, N+2; N+3, N+4, N+5; N+6, N+7, N+8]
A(3,2)
A(2:3, 1:2)
A([1, 3, 7, 9])

v = (N+1) : 1.5 : (N+4);

B = [A; v(:)'];


