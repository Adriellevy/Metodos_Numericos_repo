m = zeros(10,10);
for i=1:10
    for j=1:10
        if(i<=j)
            m(i,j)=cos(i*j);
        end
    end
end

m

%m(1:10,1:10)=cos((1:10)*(1:10))


b = zeros(10,1)
b(1:10) = tan(1:10)
