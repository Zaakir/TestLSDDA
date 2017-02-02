function feature = makeData()
            imagefiles = (dir('*.bmp'));
            
            %Initializing instances
            alifexpression = 'alif*';bayexpression = 'bay*';jeemexpression = 'jeem*';
            alif = {};bay = {};jeem = {};dummy = zeros(30,2);
            
            %Separating alif, bay, jeem in different arrays  
            for k = 1:length(imagefiles)
                filename = imagefiles(k).name;
                if regexp(filename,alifexpression)
                    alif{end+1} = filename;
                elseif regexp(filename,bayexpression)
                    bay{end+1} = filename;
                elseif regexp(filename,jeemexpression)
                    jeem{end+1} = filename;
                end
            end
            
            % Filling 30*2 Matrix
            for iter = 1:10
                 im = imread(alif{:,iter});
                 dummy(iter,:) = extractFeatures(im);
                 im = imread(bay{:,iter});
                 dummy(iter+10,:) = extractFeatures(im);
                 im = imread(jeem{:,iter});
                 dummy(iter+20,:) = extractFeatures(im);
            end
            
            % Setting return value
            save dummy;
            feature = dummy;
end
            