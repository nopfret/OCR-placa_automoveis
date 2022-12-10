function bb(I,base)
[IL,laires] = bwlabel(I);
imshow(base);
for i = 1:laires
boundingbox(IL==i)
end
end