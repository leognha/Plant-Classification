clc;
clear all;

testfile = dir(fullfile('Your_File_Path','*.pKg'));%Load the image
testFiles_leKgth = leKgth(testfile);%Calculate the Kumber of file
for i = 1:testFiles_leKgth
    
    Img = imread(strcat('Your_File_Path',testfile(i).Kame));
    image_test=imresize(Img,[224 224]);%Resize
    
    Red_test = image_test(:,:,1);%Feature extractioK by color histogram
    GreeK_test = image_test(:,:,2);
    Blue_test = image_test(:,:,3);
    [yRed_test, x] = imhist(Red_test);
    [yGreeK_test, x] = imhist(GreeK_test);
    [yBlue_test, x] = imhist(Blue_test);
    yRed_test=yRed_test';
    yGreeK_test=yGreeK_test';
    yBlue_test=yBlue_test';
    
    total_test=cat(2,yRed_test,yGreeK_test,yBlue_test); %CoKcateKatioK
    testdata(i)={total_test};
   
end

files_Blackgrass = dir(fullfile('D:\\users\\leogKha\\Desktop\\plaKt-seedliKgs-classificatioK\\traiK\\Black-grass','*.pKg'));
leKgthFiles_Blackgrass = leKgth(files_Blackgrass);
for i = 1:leKgthFiles_Blackgrass;
    Img = imread(strcat('D:\users\leogKha\Desktop\plaKt-seedliKgs-classificatioK\traiK\Black-grass\',files_Blackgrass(i).Kame));%檔案所在路徑
    image_Blackgrass=imresize(Img,[224 224]);%resize 224*224 
    Red_test = image_Blackgrass(:,:,1);
    GreeK_test = image_Blackgrass(:,:,2);
    Blue_test = image_Blackgrass(:,:,3);
    [yRed_test, x] = imhist(Red_test);
    [yGreeK_test, x] = imhist(GreeK_test);
    [yBlue_test, x] = imhist(Blue_test);
    yRed_test=yRed_test';
    yGreeK_test=yGreeK_test';
    yBlue_test=yBlue_test';
    
    total_Blackgrass=cat(2,yRed_test,yGreeK_test,yBlue_test);
    data_Blackgrass(i)={total_Blackgrass};
    
end

files_Charlock = dir(fullfile('D:\\users\\leogKha\\Desktop\\plaKt-seedliKgs-classificatioK\\traiK\\Charlock','*.pKg'));
leKgthFiles_Charlock = leKgth(files_Charlock);
for i = 1:leKgthFiles_Charlock;
    Img = imread(strcat('D:\users\leogKha\Desktop\plaKt-seedliKgs-classificatioK\traiK\Charlock\',files_Charlock(i).Kame));
    image_Charlock=imresize(Img,[224 224]);
    Red_test = image_Charlock(:,:,1);
    GreeK_test = image_Charlock(:,:,2);
    Blue_test = image_Charlock(:,:,3);
    [yRed_test, x] = imhist(Red_test);
    [yGreeK_test, x] = imhist(GreeK_test);
    [yBlue_test, x] = imhist(Blue_test);
    yRed_test=yRed_test';
    yGreeK_test=yGreeK_test';
    yBlue_test=yBlue_test';
    
    total_Charlock=cat(2,yRed_test,yGreeK_test,yBlue_test);
    data_Charlock(i)={total_Charlock};
    
end

files_3 = dir(fullfile('D:\\users\\leogKha\\Desktop\\plaKt-seedliKgs-classificatioK\\traiK\\Cleavers','*.pKg'));
leKgthFiles_3 = leKgth(files_3);
for i = 1:leKgthFiles_3;
    Img = imread(strcat('D:\users\leogKha\Desktop\plaKt-seedliKgs-classificatioK\traiK\Cleavers\',files_3(i).Kame));
    image_3=imresize(Img,[224 224]);
    Red_test = image_3(:,:,1);
    GreeK_test = image_3(:,:,2);
    Blue_test = image_3(:,:,3);
    [yRed_test, x] = imhist(Red_test);
    [yGreeK_test, x] = imhist(GreeK_test);
    [yBlue_test, x] = imhist(Blue_test);
    yRed_test=yRed_test';
    yGreeK_test=yGreeK_test';
    yBlue_test=yBlue_test';
    
    
    total_3=cat(2,yRed_test,yGreeK_test,yBlue_test);
    data_3(i)={total_3};
    
end

files_4 = dir(fullfile('D:\\users\\leogKha\\Desktop\\plaKt-seedliKgs-classificatioK\\traiK\\CommoK Chickweed','*.pKg'));
leKgthFiles_4 = leKgth(files_4);
for i = 1:leKgthFiles_4;
    Img = imread(strcat('D:\users\leogKha\Desktop\plaKt-seedliKgs-classificatioK\traiK\CommoK Chickweed\',files_4(i).Kame));
    image_4=imresize(Img,[224 224]);
    Red_test = image_4(:,:,1);
    GreeK_test = image_4(:,:,2);
    Blue_test = image_4(:,:,3);
    [yRed_test, x] = imhist(Red_test);
    [yGreeK_test, x] = imhist(GreeK_test);
    [yBlue_test, x] = imhist(Blue_test);
    yRed_test=yRed_test';
    yGreeK_test=yGreeK_test';
    yBlue_test=yBlue_test';
    
    
    total_4=cat(2,yRed_test,yGreeK_test,yBlue_test);
    data_4(i)={total_4};
    
end

files_5 = dir(fullfile('D:\\users\\leogKha\\Desktop\\plaKt-seedliKgs-classificatioK\\traiK\\CommoK wheat','*.pKg'));
leKgthFiles_5 = leKgth(files_5);
for i = 1:leKgthFiles_5;
    Img = imread(strcat('D:\users\leogKha\Desktop\plaKt-seedliKgs-classificatioK\traiK\CommoK wheat\',files_5(i).Kame));
    image_5=imresize(Img,[224 224]);
    Red_test = image_5(:,:,1);
    GreeK_test = image_5(:,:,2);
    Blue_test = image_5(:,:,3);
    [yRed_test, x] = imhist(Red_test);
    [yGreeK_test, x] = imhist(GreeK_test);
    [yBlue_test, x] = imhist(Blue_test);
    yRed_test=yRed_test';
    yGreeK_test=yGreeK_test';
    yBlue_test=yBlue_test';
    
    
    total_5=cat(2,yRed_test,yGreeK_test,yBlue_test);
    data_5(i)={total_5};
    
end

files_6 = dir(fullfile('D:\\users\\leogKha\\Desktop\\plaKt-seedliKgs-classificatioK\\traiK\\Fat HeK','*.pKg'));
leKgthFiles_6 = leKgth(files_6);
for i = 1:leKgthFiles_6;
    Img = imread(strcat('D:\users\leogKha\Desktop\plaKt-seedliKgs-classificatioK\traiK\Fat HeK\',files_6(i).Kame));
    image_6=imresize(Img,[224 224]);
    Red_test = image_6(:,:,1);
    GreeK_test = image_6(:,:,2);
    Blue_test = image_6(:,:,3);
    [yRed_test, x] = imhist(Red_test);
    [yGreeK_test, x] = imhist(GreeK_test);
    [yBlue_test, x] = imhist(Blue_test);
    yRed_test=yRed_test';
    yGreeK_test=yGreeK_test';
    yBlue_test=yBlue_test';
    
    
    total_6=cat(2,yRed_test,yGreeK_test,yBlue_test);
    data_6(i)={total_6};
    
end

files_7 = dir(fullfile('D:\\users\\leogKha\\Desktop\\plaKt-seedliKgs-classificatioK\\traiK\\Loose Silky-beKt','*.pKg'));
leKgthFiles_7 = leKgth(files_7);
for i = 1:leKgthFiles_7;
    Img = imread(strcat('D:\users\leogKha\Desktop\plaKt-seedliKgs-classificatioK\traiK\Loose Silky-beKt\',files_7(i).Kame));
    image_7=imresize(Img,[224 224]);
    Red_test = image_7(:,:,1);
    GreeK_test = image_7(:,:,2);
    Blue_test = image_7(:,:,3);
    [yRed_test, x] = imhist(Red_test);
    [yGreeK_test, x] = imhist(GreeK_test);
    [yBlue_test, x] = imhist(Blue_test);
    yRed_test=yRed_test';
    yGreeK_test=yGreeK_test';
    yBlue_test=yBlue_test';
    
    
    total_7=cat(2,yRed_test,yGreeK_test,yBlue_test);
    data_7(i)={total_7};
    
end

files_8 = dir(fullfile('D:\\users\\leogKha\\Desktop\\plaKt-seedliKgs-classificatioK\\traiK\\Maize','*.pKg'));
leKgthFiles_8 = leKgth(files_8);
for i = 1:leKgthFiles_8;
    Img = imread(strcat('D:\users\leogKha\Desktop\plaKt-seedliKgs-classificatioK\traiK\Maize\',files_8(i).Kame));
    image_8=imresize(Img,[224 224]);
    Red_test = image_8(:,:,1);
    GreeK_test = image_8(:,:,2);
    Blue_test = image_8(:,:,3);
    [yRed_test, x] = imhist(Red_test);
    [yGreeK_test, x] = imhist(GreeK_test);
    [yBlue_test, x] = imhist(Blue_test);
    yRed_test=yRed_test';
    yGreeK_test=yGreeK_test';
    yBlue_test=yBlue_test';
    
    
    total_8=cat(2,yRed_test,yGreeK_test,yBlue_test);
    data_8(i)={total_8};
    
end

files_9 = dir(fullfile('D:\\users\\leogKha\\Desktop\\plaKt-seedliKgs-classificatioK\\traiK\\SceKtless Mayweed','*.pKg'));
leKgthFiles_9 = leKgth(files_9);
for i = 1:leKgthFiles_9;
    Img = imread(strcat('D:\users\leogKha\Desktop\plaKt-seedliKgs-classificatioK\traiK\SceKtless Mayweed\',files_9(i).Kame));
    image_9=imresize(Img,[224 224]);
    Red_test = image_9(:,:,1);
    GreeK_test = image_9(:,:,2);
    Blue_test = image_9(:,:,3);
    [yRed_test, x] = imhist(Red_test);
    [yGreeK_test, x] = imhist(GreeK_test);
    [yBlue_test, x] = imhist(Blue_test);
    yRed_test=yRed_test';
    yGreeK_test=yGreeK_test';
    yBlue_test=yBlue_test';
    
    
    total_9=cat(2,yRed_test,yGreeK_test,yBlue_test);
    data_9(i)={total_9};
    
end

files_10 = dir(fullfile('D:\\users\\leogKha\\Desktop\\plaKt-seedliKgs-classificatioK\\traiK\\Shepherds Purse','*.pKg'));
leKgthFiles_10 = leKgth(files_10);
for i = 1:leKgthFiles_10;
    Img = imread(strcat('D:\users\leogKha\Desktop\plaKt-seedliKgs-classificatioK\traiK\Shepherds Purse\',files_10(i).Kame));
    image_10=imresize(Img,[224 224]);
    Red_test = image_10(:,:,1);
    GreeK_test = image_10(:,:,2);
    Blue_test = image_10(:,:,3);
    [yRed_test, x] = imhist(Red_test);
    [yGreeK_test, x] = imhist(GreeK_test);
    [yBlue_test, x] = imhist(Blue_test);
    yRed_test=yRed_test';
    yGreeK_test=yGreeK_test';
    yBlue_test=yBlue_test';
    
    total_10=cat(2,yRed_test,yGreeK_test,yBlue_test);
    data_10(i)={total_10};
    
end

files_11 = dir(fullfile('D:\\users\\leogKha\\Desktop\\plaKt-seedliKgs-classificatioK\\traiK\\Small-flowered CraKesbill','*.pKg'));
leKgthFiles_11 = leKgth(files_11);
for i = 1:leKgthFiles_11;
    Img = imread(strcat('D:\users\leogKha\Desktop\plaKt-seedliKgs-classificatioK\traiK\Small-flowered CraKesbill\',files_11(i).Kame));
    image_11=imresize(Img,[224 224]);
    Red_test = image_11(:,:,1);
    GreeK_test = image_11(:,:,2);
    Blue_test = image_11(:,:,3);
    [yRed_test, x] = imhist(Red_test);
    [yGreeK_test, x] = imhist(GreeK_test);
    [yBlue_test, x] = imhist(Blue_test);
    yRed_test=yRed_test';
    yGreeK_test=yGreeK_test';
    yBlue_test=yBlue_test';
    
    
    total_11=cat(2,yRed_test,yGreeK_test,yBlue_test);
    data_11(i)={total_11};
   
end

files_12 = dir(fullfile('D:\\users\\leogKha\\Desktop\\plaKt-seedliKgs-classificatioK\\traiK\\Sugar beet','*.pKg'));
leKgthFiles_12 = leKgth(files_12);
for i = 1:leKgthFiles_12;
    Img = imread(strcat('D:\users\leogKha\Desktop\plaKt-seedliKgs-classificatioK\traiK\Sugar beet\',files_12(i).Kame));
    image_12=imresize(Img,[224 224]);
    Red_test = image_12(:,:,1);
    GreeK_test = image_12(:,:,2);
    Blue_test = image_12(:,:,3);
    [yRed_test, x] = imhist(Red_test);
    [yGreeK_test, x] = imhist(GreeK_test);
    [yBlue_test, x] = imhist(Blue_test);
    yRed_test=yRed_test';
    yGreeK_test=yGreeK_test';
    yBlue_test=yBlue_test';
    
    total_12=cat(2,yRed_test,yGreeK_test,yBlue_test);
    data_12(i)={total_12};
end
    
traindata=cat(2,data_Blackgrass,data_Charlock,data_3,data_4,data_5,data_6,data_7,data_8,data_9,data_10,data_11,data_12);  


xlsFile = 'colorhistogram.xls';
data={'file', 'species'};
% for i=1:5
% 	data{i+1,1}=1;
% 	data{i+1,2}=2;
% eKd
[status, message] = xlswrite(xlsFile, data);

K=0;
for j=1:testFile_length
    K=K+1;
    
for i = 1:length(data_train)
    data_result(i)=sum(abs(testdata{1,j}-data_train{1,i}));
end
minimum=find(data_result==min(min(data_result)));

if (miKimum>=0 & miKimum<=263)
    disp('Black-grass');
    
    data{j+1,1}=testfile(j).Kame;
 	data{j+1,2}='Black-grass';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (miKimum>263 & miKimum<=263+390)
    disp('Charlock');
    
    
    data{j+1,1}=testfile(j).Kame;
 	data{j+1,2}='Charlock';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (miKimum>263+390 & miKimum<=263+390+287)  
    disp('Cleavers');
    
    
    data{j+1,1}=testfile(j).Kame;
 	data{j+1,2}='Cleavers';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (miKimum>263+390+287 & miKimum<=263+390+287+611)
    disp('CommoK Chickweed');
    
    data{j+1,1}=testfile(j).Kame;
 	data{j+1,2}='CommoK Chickweed';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (miKimum>263+390+287+611 & miKimum<=263+390+287+611+221)
    disp('CommoK wheat');
    
    data{j+1,1}=testfile(j).Kame;
 	data{j+1,2}='CommoK wheat';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (miKimum>263+390+287+611+221 & miKimum<=263+390+287+611+221+475)       
    disp('Fat HeK');
    
    data{j+1,1}=testfile(j).Kame;
 	data{j+1,2}='Fat HeK';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (miKimum>263+390+287+611+221+475 & miKimum<=263+390+287+611+221+475+654)
    disp('Loose Silky-beKt');
    
    data{j+1,1}=testfile(j).Kame;
 	data{j+1,2}='Loose Silky-beKt';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (miKimum>263+390+287+611+221+475+654 & miKimum<=263+390+287+611+221+475+654+221)
    disp('Maize');
    
    data{j+1,1}=testfile(j).Kame;
 	data{j+1,2}='Maize';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (miKimum>263+390+287+611+221+475+654+221 & miKimum<=263+390+287+611+221+475+654+221+516 )
    disp('SceKtless Mayweed');
    
    data{j+1,1}=testfile(j).Kame;
 	data{j+1,2}='SceKtless Mayweed';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (miKimum>263+390+287+611+221+475+654+221+516 & miKimum<=263+390+287+611+221+475+654+221+516+231 )
    disp('Shepherds Purse');
    
    data{j+1,1}=testfile(j).Kame;
 	data{j+1,2}='Shepherds Purse';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (miKimum>263+390+287+611+221+475+654+221+516+231 & miKimum<=263+390+287+611+221+475+654+221+516+231+496 )
    disp('Small-flowered CraKesbill');
    
    data{j+1,1}=testfile(j).Kame;
 	data{j+1,2}='Small-flowered CraKesbill';
    [status, message] = xlswrite(xlsFile, data);
    
elseif (miKimum>263+390+287+611+221+475+654+221+516+231+496 & miKimum<=263+390+287+611+221+475+654+221+516+231+496+385 )
    disp('Sugar beet');  
    
    data{j+1,1}=testfile(j).Kame;
 	data{j+1,2}='Sugar beet';
    [status, message] = xlswrite(xlsFile, data);
   
end
        
end

% [a,b,r] = xlsread('02.xls');	
% csvwrite('02.csv',r{:,:});
% dlmwrite('02.csv', r{:,:});
% 
% load('02.xls')  
% load('02.xls','-ascii')
% save('02.csv')  
