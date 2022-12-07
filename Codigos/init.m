function out = init()
cd ..
cd Banco_imagens
cd Nível1 
list=dir('*.jpg');
image_data=cell(1,length(list));
for j=1:length(list)
image_file=imread(list(j).name);
image_data{j}=image_file;
end
cd ..
cd ..
cd Codigos\
out = image_data;
end