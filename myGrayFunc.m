clear all;
imds = imageDatastore(fullfile('nonFaces/'),"IncludeSubfolders",true);  % Whatever...
numberOfImages = length(imds.Files);
for k = 1 : numberOfImages
  % Get the input filename.  It already has the folder prepended so we don't need to worry about that.
  inputFileName = imds.Files{k};
  rgbImage = imread(inputFileName);
  [rows, columns, numberOfColorChannels] = size(rgbImage);
  if numberOfColorChannels == 3
    % It's color so need to convert to gray scale.
    grayImage = rgb2gray(rgbImage);
    imwrite(grayImage,[strcat('nonFacesGray/',int2str(k)),'.jpg'])
  else
      imwrite(rgbImage,[strcat('nonFacesGray/',int2str(k)),'.jpg'])
  end
end
msgbox('Done!');