function collect_dataset()
    objects = {'weapons', 'suspicious_packages', 'unauthorized_personnel'};
    
    % Check if the 'dataset' directory exists; create if it doesn't
    if ~exist('dataset', 'dir')
        mkdir('dataset');
    end
    
    for i = 1:length(objects)
        obj = objects{i};
        objDir = fullfile('dataset', obj);
        
        % Check if the subdirectory exists; create if it doesn't
        if ~exist(objDir, 'dir')
            mkdir(objDir);
        end
        
        % Simulate saving images
        for frame = 1:5
            filename = fullfile(objDir, sprintf('%s_%06d.png', obj, frame));
            % Simulate saving by creating a blank image
            imwrite(zeros(100,100), filename); 
        end
    end
    
    disp('Dataset collection complete.');
end
