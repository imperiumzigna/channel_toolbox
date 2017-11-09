function signal = loadDgzFileHelper(directory_or_file_path, directory_options)

if (strcmp(directory_options, 'all') || strcmp(directory_options, 'todos') )
    directory = dir(string(directory_or_file_path)); % Loads directory
    files = directory.name;
            
        for i = 1 : length(files)
                
            fid = fopen( strcat(string(files(i)), '.dgz'),'r');
            data = fread(fid,'double=>double');
            fclose(fid);
           
            signal{1,i} = data(1:2:end);
            signal{2,i} = data(2:2:end);
        end
            
elseif (strcmp(directory_options, 'single') || strcmp(directory_options, 'unico') )
            file = fopen(string(directory_or_file_path));
                     
else
        error('Invalid Option. Please enter a valid directory option. See documentation for available options... ');
end


end