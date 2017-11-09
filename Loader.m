classdef Loader
    % LOADER - Class description || Descricao da Classe 
    %   EN - Class responsible to manage all file loading related actions of the toolbox
    %
    %   PT/BR - Classe responsavel por gerenciar todas as acoes relacionadas a carregar arquivos  
    %   do toolbox
    %
    %   Channel Toolbox v1.0.0 - 2017
    %   Author: Igor Amorim Silva at OFDM Research Group
    %   Created: 2017/11/08  -> [Y / M / D]
    %   Reference: Based on preprocessing script of professor Dr. Leonardo
    %   Gonsioroski at Universidade Estadual do Maranhão.
    properties
        % 
    end
    
    methods
        function [signal] = loadDgzFile(obj, directory_or_file_path, directory_options)
            % LOADDGZFILE - Function Description 
            %   
            % EN - Loads signal data from .dgz file and returns extracted
            % data
            % 
            % Inputs - 
            %   
            %   * directory_or_file_path    -> 'Path to directory with files to be loaded or just one file '
            %   * directory_options         -> 'Available Options to load .dgz files'
            %   *    Options:
            %   *       -* all              -> 'Loads all .dgz files of directory' 
            %   *       -* single           -> 'Loads only the specified .dgz file'
            %
            % Note: Case "directory_options" is set to "single", the user
            % must pass a file path to "directory_or_file_path" instead of
            % a directory.
            %
            % Outputs -
            %   signal - extracted signal
            %
            % PT/BR - Carrega dados de arquivo .dgz e retorna sinal
            % extraido
            %
            % Entradas - 
            %   
            %   * directory_or_file_path    -> 'Caminho do diretório com os arquivos a serem carregados ou apenas um arquivo '
            %   * directory_options         -> 'Opcao escolhida para carregar .dgz arquivos'
            %   *    Opcoes:
            %   *       -* todos            -> 'Carrega todos os arquivos .dgz do diretorio' 
            %   *       -* unico            -> 'Carrega apenas um arquivo .dgz especificado'
            %
            % Nota: Caso "directory_options" esteja configurado para
            % "unico", o usuario deve passar para a variavel
            % "directory_or_file_path" o caminho do arquivo
            % ao invés de apenas o diretorio.
            %
            % Saidas -
            %   signal - sinal extraido
            %
            
            
            
            if (strcmp(directory_options, 'all') || strcmp(directory_options, 'todos') )
            directory = dir(string(directory_or_file_path)); % Loads directory
            files = directory.name;
            
            for i = 1 : length(files)
                
            fid = fopen(['' diretorio Nome num2str(i) '.dgz'],'r');
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
   
    end
end

