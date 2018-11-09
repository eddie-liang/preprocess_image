% Get all PDF files in the current folder
files = dir('*.jpg');



% for i=1:length(files)
%     img=imread(files(i).name);
%     imwrite(img,strcat('a',num2str(i),'.jpg'))
% end



% Loop through each
for id = 1:length(files)
    % Get the file name (minus the extension)
    [~, f] = fileparts(files(id).name);
      % Convert to number
      num = str2double(erase(f,'a'));
      if ~isnan(num)
          % If numeric, rename
          movefile(files(id).name, strcat('tylenol_',sprintf('%05d.jpg', num)));
      end
end