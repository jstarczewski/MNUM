function err = approximate(base, k, data)
A = zeros(k+1,1);
B = zeros(k+1,k+1);
fx = base(A,B,k,data);
X = data(:,2);
func_handler = fx;
if not(isa(func_handler, 'function_handle'))
    func_handler = matlabFunction(fx);
end
Y = arrayfun(func_handler, data(:,1));
err = immse(X,Y);
max_value = max(data(:,1));
min_value = min(data(:,1));
disp(min_value(1,1));
disp(max_value(1,1));
final_points = linspace(min_value(1,1), max_value(1,1), 100);
for i = 1:100
    final_points(2,i) = subs(fx, final_points(1,i));
end
scatter(data(:,1), data(:,2), "b");
disp(final_points);
hold on
%fplot(fx, "r--");
plot(final_points(1,:), final_points(2,:), "r");
hold off
disp(fx);
return
