function c = rhs(t,x)
cd = x
c = zeros(5,1)
syms c1 x1 c2 c3 x2 

c(1) = -cd(1)*(k21+k41)+k12*cd(2)+k14*cd(4)
c(2) = -cd(2)*(k32+k12)+k21*cd(1)
c(3) = k32*cd(2)+k35*cd(5)-k53*cd(3)
c(4) = k41*cd(1)-k14*cd(4)
c(5)= k53*cd(3)-cd(5)*(k35+k05)
end 