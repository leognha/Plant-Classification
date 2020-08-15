clc;
clear all;

%%test data
files_test = dir(fullfile('D:\\users\\leognha\\Desktop\\plant-seedlings-classification\\test','*.png'));
lengthFiles_test = length(files_test);
for i = 1:lengthFiles_test;
    
    Img = imread(strcat('D:\users\leognha\Desktop\plant-seedlings-classification\test\',files_test(i).name));%檔案所在路徑
    image_test=imresize(Img,[224 224]);%resize 224*224
    
    Red_test = image_test(:,:,1);
    Green_test = image_test(:,:,2);
    Blue_test = image_test(:,:,3);
    [yRed_test, x] = imhist(Red_test);
    [yGreen_test, x] = imhist(Green_test);
    [yBlue_test, x] = imhist(Blue_test);
    total_test=yRed_test+yGreen_test+yBlue_test;
    
    data_test{i}=total_test;
  
    
%     files_Blackgrass = dir(fullfile('C:\\Users\\Andrew\\Desktop\\computer vision\\train\\Black-grass','*.png'));
%     lengthFiles_Blackgrass = length(files_Blackgrass);
%     for i = 1:lengthFiles_Blackgrass;
%         Img = imread(strcat('C:\Users\Andrew\Desktop\computer vision\train\Black-grass\',files_Blackgrass(i).name));%檔案所在路徑
%         image_Blackgrass=imresize(Img,[224 224]);%resize 224*224
%         
%         Red_Blackgrass = image_Blackgrass(:,:,1);
%         Green_Blackgrass = image_Blackgrass(:,:,2);
%         Blue_Blackgrass = image_Blackgrass(:,:,3);
%         [yRed_Blackgrass, x] = imhist(Red_Blackgrass);
%         [yGreen_Blackgrass, x] = imhist(Green_Blackgrass);
%         [yBlue_Blackgrass, x] = imhist(Blue_Blackgrass);
%         
%         value_temp=abs(yRed_test-yRed_Blackgrass)+abs(yGreen_test-yGreen_Blackgrass)+abs(yBlue_test-yBlue_Blackgrass);
%         
%         if i==1
%            value=1000000000000;
%            value=min(value,value_temp);
%         else
%            value=min(value,value_temp);
%         end
%     end
%     Blackgrass=value;
    
end







