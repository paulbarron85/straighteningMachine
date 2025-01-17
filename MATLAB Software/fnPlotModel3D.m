function [Y_est] = fnModelPlot3D(Y, X1, X2, txtTitle, labelY, labelX1, labelX2)
%{
    Date: 2023/08/23
    Filename: SignalVsSignal.mlx
    Author: Paul Barron
    Description: This function calculates a 3D model plus the normalized
    FIT value. It then plots the original data, the model and the FIT
    value.
%}
    n = size(Y, 1);
    X = [ones(n,1) X1 X2];
    beta = inv(X' * X) * (X' * Y);
    
    Y_est = X * beta;
    %RSS = sum((Y_est - Y).^2);
    %RSS = var(Y_est - Y) / var(Y);

    figure();
    scatter3(X1,X2,Y,'filled');
    hold on;

    interval1 = (max(X1) - min(X1))/20;
    x1fit = min(X1):interval1:max(X1);
    interval2 = (max(X2) - min(X2))/20;
    x2fit = min(X2):interval2:max(X2);
    [X1FIT,X2FIT] = meshgrid(x1fit, x2fit);

    YFIT = beta(1) + beta(2).*X1FIT + beta(3).*X2FIT;
    %YFIT = b(1) + b(2)*X1FIT + b(3)*X2FIT + b(4)*X1FIT.*X2FIT;
    mesh(X1FIT, X2FIT, YFIT);
    
    xlabel(labelX1, 'Interpreter', 'none');
    ylabel(labelX2, 'Interpreter', 'none');
    zlabel(labelY, 'Interpreter', 'none');
    fprintf("%s", txtTitle);

    % Fit equation from compare function
    FitValue = 100 * (1-norm(Y-Y_est)/norm(Y-mean(Y)));
    stringValue = sprintf('%.1f', FitValue);
    annotation('textbox', [0.1 0.8, 0.1, 0.1], ...
        'String', convertStringsToChars(stringValue),...
        HorizontalAlignment= 'center', ...
        VerticalAlignment='middle');
end