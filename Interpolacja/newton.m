function func = newton(data, x)
    func = 0.0;
    u = data(1,:);
    r = zeros(size(u,2));
    r(:,1) = data(2,:);
    for j = 1:1:size(u,2)
        z = size(u,2);
        for i = size(u,2)-j :-1:1
            q = r(i+1,j)-r(i,j);
            w = u(z)- u(z-j);
            r(i,j+1) = q/w;
            z = z-1;
        end
    end
      
    for i = 1:1:size(u,2)
        base = 1;
        for j = 1:1:i-1
            base = base * (x-u(j));      
        end
        func = func + r(1,i)*base;
    end
    %disp(r)
            
    