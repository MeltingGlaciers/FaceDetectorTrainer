clear all;
imds = imageDatastore(fullfile('nonFacesGray/'));
numberOfImages = length(imds.Files);
for k = 1 : numberOfImages
  inputFileName = imds.Files{k};
  img = imread(inputFileName);
    imwrite(flip(img,2),[strcat('nonFacesGray/flip/',int2str(k)),'.jpg'])
end