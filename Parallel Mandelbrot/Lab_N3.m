%3D ������� � MatLAb
%������������ ���������� � MatLAb
function Lab_N3
%���������� �������� ������������
    start_parall;
    flPARALLEL(true);
    close all;
    [X, Y, Z] = mandelbrot(-3:.01:3,-2:.01:2,4,64);
    figure(1); h = pcolor(X,Y,Z); shading interp;
    colormap(jet(128));
    set(h,'ButtonDownFcn',@ButtonDownFcn)
