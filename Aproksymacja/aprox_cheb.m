function x = aprox_cheb()
x = [0 0.5 1 1.5 2; 0 0.19 0.26 0.29 0.31];
disp(x);
v = zeros(3,1);
[a, b] = size(v);
disp(a);
for i = 0:1:2
    for j = 1:5
        v(i+1,1) = v(i+1,1) + (x(1,j).^i) * (x(2,j));
    end
end
