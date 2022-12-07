function Iout = cut(I)
bkp = I;
[v,u]=find(I);

umax = max(u);
umin = min(u);
vmax = max(v);
vmin = min(v);

Iout = imcrop(I,[umin   vmin   (umax-umin)   (vmax-vmin)]);

Iout = (Iout-1).^2;
[IL, laiers] = bwlabel(Iout);


for i = 1:laiers
I2 = (IL==i);
m(i) = mpq(I2,0,0);
end

B = sort(m);
B = (B(size(B,2)-7));


Ia = zeros(size(Iout));
count = 0;

j = 1;

for j = 1:laiers
    if m(j)>B
       Ia = Ia + (IL == j);
    end
end

bkp1 = zeros(size(bkp));
bkp1([vmin:vmax],[umin:umax]) = Ia;

Iout = bkp1;
end