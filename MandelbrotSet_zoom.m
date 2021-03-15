function MandelbrotSet_zoom(n, n_iter, x0, y0, width)

x1 = x0 - width;   x2 = x0 + width;
y1 = y0 - width; y2 = y0 + width;

[x,y] = meshgrid(linspace(x1, x2, n), linspace(y1, y2, n));

c = x + 1i * y;
z = zeros(size(c));
k = zeros(size(c));

for ii = 1:n_iter
    z   = z.^2 + c;
    k(abs(z) > 2 & k == 0) = n_iter - ii;
end

imagesc(k),
str = ['Zoom-in : ',num2str(1.4/width)];
title(str,'FontSize',12,...
    'FontWeight','bold','Color','r')
%xlabel('copyright@Rabehi', 'FontSize',9 )

%% Set here the color map
% colorcube %lines %prism %colorcube %pink %jet %cool %default %spring %summer %winter %hot
colormap lines

end
