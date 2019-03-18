function x = aprox()
x = cell2mat(struct2cell(load('dane_apx0.mat')));
%disp(cell2mat(struct2cell(x)));
%x = [0 0.5 1 1.5 2; 0 0.19 0.26 0.29 0.31];
disp(x);
v = zeros(2,1);
[a, b] = size(v);
disp(a);
for i = 0:1:1
    for j = 1:30
        v(i+1,1) = v(i+1,1) + (x(j,1).^i) * (x(j,2));
    end
end
y = zeros(2,2);
for k = 0:1:1
    for l = 0:1
        for m = 1:30
            y(k+1, l+1) = y(k+1, l+1) + x(m,1).^(k+l);
        end
    end
end
z = y\v;
scatter(x(:,1), x(:,2), "b");
hold on

fplot(poly2sym(fliplr(z.')), "r");
hold off
disp(z);