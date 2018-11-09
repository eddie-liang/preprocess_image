cd preprocess6_histogram

list=dir('*.jpg');


for i=1:length(list)
    img=imread(list(i).name);
    img = histeq(img);
    imwrite(img,strcat('histogram',num2str(i),'.jpg'))
end




