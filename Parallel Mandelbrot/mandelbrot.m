function [X, Y, Z] = mandelbrot(x, y, R, maxn)
[X,Y] = meshgrid(x,y);
C = X + 1i*Y;
Z = zeros(size(X));
if flPARALLEL
    parfor i = 1:numel(Z)
        Z(i) = cycle_body(C(i),maxn,R)
    end;
else 
    for i = 1:numel(Z)
        Z(i) = cycle_body(C(i),maxn,R)
    end;
end;

end
function Zi = cycle_body(Ci, maxn, R)
Zj = Ci;
for j=1:maxn
    Zj = Zj.^2 + Ci;
    if abs(Zj)>R
        break;
    end;
end;
Zi = j;
end