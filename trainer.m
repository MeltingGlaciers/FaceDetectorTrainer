clear all;

load('stopSignsAndCars.mat');

posDir = fullfile('faces sets/');
posImgs = imageDatastore(posDir,"IncludeSubfolders",true,"LabelSource","foldernames");

size = size(posImgs.Files);
temp = repmat({[1,1,24,24]},size(1),1);

pos = table();
pos.imageName = posImgs.Files;
pos.face = temp;

negDir = fullfile('nonFacesGray/');
negImgs = imageDatastore(negDir,"IncludeSubfolders",true);

trainCascadeObjectDetector('megaDetector3.xml',pos,negImgs, 'FeatureType', ...
    'LBP','ObjectTrainingSize', [24,24], 'FalseAlarmRate',0.1,'NumCascadeStages',6);