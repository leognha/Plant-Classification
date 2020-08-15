clc;
clear all;

testfile = dir(fullfile('Your_File_Path','*.png'));
lengthtestfile = length(files_test);
for i = 1:lengthtestfile
    
    Img = imread(strcat('Your_File_Path',testfile(i).name));
    image_test=imresize(Img,[224 224]);%Resize
    
    bag = bagOfFeatures(image_test);
    total_test=bag;
   
    testdata(i)={total_test};
end

files_Blackgrass = dir(fullfile('D:\\users\\leognha\\Desktop\\plant-seedlings-classification\\train\\Black-grass','*.png'));
lengthFiles_Blackgrass = length(files_Blackgrass);
for i = 1:lengthFiles_Blackgrass;
    Img = imread(strcat('D:\users\leognha\Desktop\plant-seedlings-classification\train\Black-grass\',files_Blackgrass(i).name));%�ɮשҦb���|
    image_Blackgrass=imresize(Img,[224 224]);%resize 224*224  
    
    featureVector= extractHOGFeatures(image_Blackgrass);
    total_Blackgrass=featureVector;
    
    data_Blackgrass(i)={total_Blackgrass};
end

files_Charlock = dir(fullfile('D:\\users\\leognha\\Desktop\\plant-seedlings-classification\\train\\Charlock','*.png'));
lengthFiles_Charlock = length(files_Charlock);
for i = 1:lengthFiles_Charlock;
    Img = imread(strcat('D:\users\leognha\Desktop\plant-seedlings-classification\train\Charlock\',files_Charlock(i).name));
    image_Charlock=imresize(Img,[224 224]);
    
    featureVector= extractHOGFeatures(image_Charlock);
    total_Charlock=featureVector;
    
    data_Charlock(i)={total_Charlock};
end

files_3 = dir(fullfile('D:\\users\\leognha\\Desktop\\plant-seedlings-classification\\train\\Cleavers','*.png'));
lengthFiles_3 = length(files_3);
for i = 1:lengthFiles_3;
    Img = imread(strcat('D:\users\leognha\Desktop\plant-seedlings-classification\train\Cleavers\',files_3(i).name));
    image_3=imresize(Img,[224 224]);
    
    featureVector= extractHOGFeatures(image_3);
    total_3=featureVector;
    
    data_3(i)={total_3};
end

files_4 = dir(fullfile('D:\\users\\leognha\\Desktop\\plant-seedlings-classification\\train\\Common Chickweed','*.png'));
lengthFiles_4 = length(files_4);
for i = 1:lengthFiles_4;
    Img = imread(strcat('D:\users\leognha\Desktop\plant-seedlings-classification\train\Common Chickweed\',files_4(i).name));
    image_4=imresize(Img,[224 224]);
    
    featureVector= extractHOGFeatures(image_4);
    total_4=featureVector;
    
    data_4(i)={total_4};
    
end

files_5 = dir(fullfile('D:\\users\\leognha\\Desktop\\plant-seedlings-classification\\train\\Common wheat','*.png'));
lengthFiles_5 = length(files_5);
for i = 1:lengthFiles_5;
    Img = imread(strcat('D:\users\leognha\Desktop\plant-seedlings-classification\train\Common wheat\',files_5(i).name));
    image_5=imresize(Img,[224 224]);
    
    featureVector= extractHOGFeatures(image_5);
    total_5=featureVector;
    
    data_5(i)={total_5};
    
end

files_6 = dir(fullfile('D:\\users\\leognha\\Desktop\\plant-seedlings-classification\\train\\Fat Hen','*.png'));
lengthFiles_6 = length(files_6);
for i = 1:lengthFiles_6;
    Img = imread(strcat('D:\users\leognha\Desktop\plant-seedlings-classification\train\Fat Hen\',files_6(i).name));
    image_6=imresize(Img,[224 224]);
    
    featureVector= extractHOGFeatures(image_6);
    total_6=featureVector;
    
    data_6(i)={total_6};
    
end

files_7 = dir(fullfile('D:\\users\\leognha\\Desktop\\plant-seedlings-classification\\train\\Loose Silky-bent','*.png'));
lengthFiles_7 = length(files_7);
for i = 1:lengthFiles_7;
    Img = imread(strcat('D:\users\leognha\Desktop\plant-seedlings-classification\train\Loose Silky-bent\',files_7(i).name));
    image_7=imresize(Img,[224 224]);
    
    featureVector= extractHOGFeatures(image_7);
    total_7=featureVector;
    
    data_7(i)={total_7};
    
end

files_8 = dir(fullfile('D:\\users\\leognha\\Desktop\\plant-seedlings-classification\\train\\Maize','*.png'));
lengthFiles_8 = length(files_8);
for i = 1:lengthFiles_8;
    Img = imread(strcat('D:\users\leognha\Desktop\plant-seedlings-classification\train\Maize\',files_8(i).name));
    image_8=imresize(Img,[224 224]);
    
    featureVector= extractHOGFeatures(image_8);
    total_8=featureVector;
    
    data_8(i)={total_8};
    
end

files_9 = dir(fullfile('D:\\users\\leognha\\Desktop\\plant-seedlings-classification\\train\\Scentless Mayweed','*.png'));
lengthFiles_9 = length(files_9);
for i = 1:lengthFiles_9;
    Img = imread(strcat('D:\users\leognha\Desktop\plant-seedlings-classification\train\Scentless Mayweed\',files_9(i).name));
    image_9=imresize(Img,[224 224]);
    
    featureVector= extractHOGFeatures(image_9);
    total_9=featureVector;
    
    data_9(i)={total_9};
end

files_10 = dir(fullfile('D:\\users\\leognha\\Desktop\\plant-seedlings-classification\\train\\Shepherds Purse','*.png'));
lengthFiles_10 = length(files_10);
for i = 1:lengthFiles_10;
    Img = imread(strcat('D:\users\leognha\Desktop\plant-seedlings-classification\train\Shepherds Purse\',files_10(i).name));
    image_10=imresize(Img,[224 224]);
    
    featureVector= extractHOGFeatures(image_10);
    total_10=featureVector;
    
    data_10(i)={total_10};
end

files_11 = dir(fullfile('D:\\users\\leognha\\Desktop\\plant-seedlings-classification\\train\\Small-flowered Cranesbill','*.png'));
lengthFiles_11 = length(files_11);
for i = 1:lengthFiles_11;
    Img = imread(strcat('D:\users\leognha\Desktop\plant-seedlings-classification\train\Small-flowered Cranesbill\',files_11(i).name));
    image_11=imresize(Img,[224 224]);
    
    featureVector= extractHOGFeatures(image_11);
    total_11=featureVector;
    
    data_11(i)={total_11};
end

files_12 = dir(fullfile('D:\\users\\leognha\\Desktop\\plant-seedlings-classification\\train\\Sugar beet','*.png'));
lengthFiles_12 = length(files_12);
for i = 1:lengthFiles_12;
    Img = imread(strcat('D:\users\leognha\Desktop\plant-seedlings-classification\train\Sugar beet\',files_12(i).name));
    image_12=imresize(Img,[224 224]);
    
    featureVector= extractHOGFeatures(image_12);
    total_12=featureVector;
    
    data_12(i)={total_12};
end
    
data_train=cat(2,data_Blackgrass,data_Charlock,data_3,data_4,data_5,data_6,data_7,data_8,data_9,data_10,data_11,data_12);  

xlsFile = 'HOG.xls';
data={'file', 'species'};
[status, message] = xlswrite(xlsFile, data);

K=0;
for j=1:testFileslength
    K=K+1;
    
for i = 1:length(data_train)
    data_result(i)=sum(abs(data_test{1,j}-data_train{1,i}));
end

min_position=find(data_result==min(min(data_result)));

if (min_position>=0 & min_position<=263)
    disp('Black-grass');
    
    data{j+1,1}=files_test(j).name;
 	data{j+1,2}='Black-grass';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (min_position>263 & min_position<=263+390)
    disp('Charlock');
    
    
    data{j+1,1}=files_test(j).name;
 	data{j+1,2}='Charlock';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (min_position>263+390 & min_position<=263+390+287)  
    disp('Cleavers');
    
    
    data{j+1,1}=files_test(j).name;
 	data{j+1,2}='Cleavers';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (min_position>263+390+287 & min_position<=263+390+287+611)
    disp('Common Chickweed');
    
    data{j+1,1}=files_test(j).name;
 	data{j+1,2}='Common Chickweed';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (min_position>263+390+287+611 & min_position<=263+390+287+611+221)
    disp('Common wheat');
    
    data{j+1,1}=files_test(j).name;
 	data{j+1,2}='Common wheat';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (min_position>263+390+287+611+221 & min_position<=263+390+287+611+221+475)       
    disp('Fat Hen');
    
    data{j+1,1}=files_test(j).name;
 	data{j+1,2}='Fat Hen';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (min_position>263+390+287+611+221+475 & min_position<=263+390+287+611+221+475+654)
    disp('Loose Silky-bent');
    
    data{j+1,1}=files_test(j).name;
 	data{j+1,2}='Loose Silky-bent';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (min_position>263+390+287+611+221+475+654 & min_position<=263+390+287+611+221+475+654+221)
    disp('Maize');
    
    data{j+1,1}=files_test(j).name;
 	data{j+1,2}='Maize';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (min_position>263+390+287+611+221+475+654+221 & min_position<=263+390+287+611+221+475+654+221+516 )
    disp('Scentless Mayweed');
    
    data{j+1,1}=files_test(j).name;
 	data{j+1,2}='Scentless Mayweed';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (min_position>263+390+287+611+221+475+654+221+516 & min_position<=263+390+287+611+221+475+654+221+516+231 )
    disp('Shepherds Purse');
    
    data{j+1,1}=files_test(j).name;
 	data{j+1,2}='Shepherds Purse';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (min_position>263+390+287+611+221+475+654+221+516+231 & min_position<=263+390+287+611+221+475+654+221+516+231+496 )
    disp('Small-flowered Cranesbill');
    
    data{j+1,1}=files_test(j).name;
 	data{j+1,2}='Small-flowered Cranesbill';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (min_position>263+390+287+611+221+475+654+221+516+231+496 & min_position<=263+390+287+611+221+475+654+221+516+231+496+385 )
    disp('Sugar beet');  
    
    data{j+1,1}=files_test(j).name;
 	data{j+1,2}='Sugar beet';
    [status, message] = xlswrite(xlsFile, data);
   
end
        
end