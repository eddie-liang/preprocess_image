cd preprocess4_rotate

list=dir('*.jpg');
for i=1:length(list)
    img=imread(list(i).name);
    img=imrotate(img,30,'crop');
    imwrite(img,strcat('rt','_30_',num2str(i),'.jpg'))
    img=imrotate(img,-30,'crop');
    imwrite(img,strcat('rt','_-30_',num2str(i),'.jpg'))

end


for i=1:length(list)
    img=imread(list(i).name);
    img=imrotate(img,60,'crop');
    imwrite(img,strcat('rt','_60_',num2str(i),'.jpg'))
    img=imrotate(img,-60,'crop');
    imwrite(img,strcat('rt','_-60_',num2str(i),'.jpg'))

end


for i=1:length(list)
    img=imread(list(i).name);
    img=imrotate(img,90,'crop');
    imwrite(img,strcat('rt','_90_',num2str(i),'.jpg'))
    img=imrotate(img,-90,'crop');
    imwrite(img,strcat('rt','_-90_',num2str(i),'.jpg'))

end