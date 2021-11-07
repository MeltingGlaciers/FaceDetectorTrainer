detector = vision.CascadeObjectDetector('megaDetector3.xml');
%img = imread('2.jpg');
img = imread('test set\test\original2.gif');
bbox = step(detector,img);
detectedImg = insertObjectAnnotation(img,'rectangle',bbox,'face');
figure; imshow(detectedImg);