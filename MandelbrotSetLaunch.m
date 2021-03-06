%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      Generate Mandelbrot Set                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear all;



x0 = -2;   x1 = 0.8;
y0 = -1.4; y1 = 1.4;

nimag = 24;         % # of images
n_iter = 255;       % # of iterations
n_size = 1200;      % size of image

width = 1.4;
xc = (x1+x0)/2;
yc = (y1+y0)/2;


tau1 = 0.5;       % Zooming parameters
tau2 = 0.9;       %  //

h = figure;
axis tight manual % this ensures that getframe() returns a consistent size
filename = 'Mandelbrot_lines_new.gif';
l = 1;

clf();   
axis square;
 

for i=1:nimag 
    
    MandelbrotSet_zoom(n_size, n_iter, xc, yc, width);
    xc = xc-width*tau1^i ; 
    width = width*(tau2^i);    
    
    drawnow();

    % Capture the plot as an image
    frame = getframe(h);
    im = frame2im(frame);
    [imind,cm] = rgb2ind(im,256);
    % Write to the GIF File
    if l == 1
        imwrite(imind,cm,filename,'gif', 'Loopcount',inf);
    else
        imwrite(imind,cm,filename,'gif','WriteMode','append');
    end
    l = l+1;  
    
end
