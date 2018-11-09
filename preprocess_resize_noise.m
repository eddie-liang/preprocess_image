cd preprocess1_crop

for i = 1:24
    img=imread(strcat('t',num2str(i),'.jpg'));
    %using vgg16
    inputSize = [256,256];
    img=imresize(img,inputSize);
    imwrite(img,strcat('rs',num2str(i),'.jpg'))
    
    
    %add gaussian noise
    noise_img_gaussian = imnoise(img,'gaussian');
    imwrite(noise_img_gaussian,strcat('ng',num2str(i),'.jpg'))

    %add salt pepper noise
    noise_img_salt_and_pepper = imnoise(img,'salt & pepper');
    imwrite(noise_img_gaussian,strcat('nsp',num2str(i),'.jpg'))

  
end

%drag file from preprocess_crop to
%     preprocess_gaussian_noise
%     preprocess_resize
%     preprocess_salt_and_pepper

