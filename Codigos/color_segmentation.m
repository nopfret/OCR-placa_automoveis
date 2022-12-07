%% Funções auxiliares
function mascara = color_segmentation(imagem)
%     imagem = N1{1};
    imagem = imagem*0.8;
    limiar1 = round(size(imagem,1)/300);
    limiar2 = round(size(imagem,1)/600);
    imagem = im2double(imagem);
    
    cor = [1 1 1];
    
    ILab = rgb2lab(imagem);

    IL = ILab(:,:,1);
    Ia = ILab(:,:,2);
    Ib = ILab(:,:,3);

    cor = rgb2lab(cor);
    
 
    D = sqrt((IL - cor(1)).^2 + (Ia - cor(2)).^2 + (Ib-cor(3)).^2);
    
    
    mascara = (D < 40);
    mascara = imclearborder(mascara);
    se = strel('disk',limiar1);
    mascara = imopen(mascara,se);
    se = strel('disk',limiar2);
    mascara = imclose(mascara,se);

end