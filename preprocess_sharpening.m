cd preprocess5_sharpening

list=dir('*.jpg');


for i=1:length(list)
    img=imread(list(i).name);
    img = imsharpen(img);
    imwrite(img,strcat('sharpening',num2str(i),'.jpg'))
end


