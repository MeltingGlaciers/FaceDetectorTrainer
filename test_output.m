clear all;
dir = fullfile('test set/test/');
imgs = imageDatastore(dir,"IncludeSubfolders",true);
detector = vision.CascadeObjectDetector('megaDetector3.xml');
detect = ones(size(imgs.Files));

for i = 1 : size(imgs.Files)

    bbox = step(detector,imread(imgs.Files{i}));
    detect(i)=size(bbox,1);

end


T = table();
T.Names = imgs.Files;
T.Count = zeros(size(imgs.Files));
T.DetCount = detect;
T.DetFalse = zeros(size(imgs.Files));
T.DetPercent = zeros(size(imgs.Files));
T.Precision = zeros(size(imgs.Files));
T.Recall = zeros(size(imgs.Files));

summary = {'Summary', 0, sum(detect), 0,0,0,0};
T = [T;summary];

file = 'result.xlsx';
writetable(T,file);