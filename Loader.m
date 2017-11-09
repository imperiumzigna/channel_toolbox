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
        function [signal] = loadDgzFile(~, directory_or_file_path, directory_options)
            % LOADDGZFILE - Method for .dgz file loading  
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
            signal = loadDgzFileHelper(directory_or_file_path, directory_options);
        end
        
        function [signal] = loadXmlFile(~, directory_or_file_path, directory_options)
            % LOADXMLFILE - Method for .xml file loading  
            %   
            % EN - Loads signal data from .xml file and returns extracted
            % data
            % 
            % Inputs - 
            %   
            %   * directory_or_file_path    -> 'Path to directory with files to be loaded or just one file '
            %   * directory_options         -> 'Available Options to load .dgz files'
            %   *    Options:
            %   *       -* all              -> 'Loads all .xml files of directory' 
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
            %   *       -* todos            -> 'Carrega todos os arquivos .xml do diretorio' 
            %   *       -* unico            -> 'Carrega apenas um arquivo .xml especificado'
            %
            % Nota: Caso "directory_options" esteja configurado para
            % "unico", o usuario deve passar para a variavel
            % "directory_or_file_path" o caminho do arquivo
            % ao invés de apenas o diretorio.
            %
            % Saidas -
            %   signal - sinal extraido
            %
            signal = loadXmlFileHelper(directory_or_file_path, directory_options);
        end
    end
end

