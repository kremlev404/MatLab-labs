function ButtonDownFcn(varargin)
N = 800; R =4; maxn = 256;
XLim = get(gca,'XLim');
YLim = get(gca,'YLim');
htic= tic;
[X, Y, Z] = mandelbrot(linspace(XLim(1),XLim(2),N),linspace(YLim(1),YLim(2),N),R,maxn);
T=toc(htic);
set(varargin{1},'XData',X,'YData',Y,'ZData',Z,'CData',Z);
title(T);
%h = pcolor(X,Y,Z); shading interp;
%set(h,'ButtonDownFcn',@ButtonDownFcn)