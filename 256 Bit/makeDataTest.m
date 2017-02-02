function feature = makeDataTest()
            imagefiles = (dir('F:\Namal College\YEAR-4\Samester-1\NNFS\Data set of Alif,Bey,Jeem\Data set\*.bmp'));
          
            
            %Initializing instances
            alifexpression = 'alif*';bayexpression = 'bay*';jeemexpression = 'jeem*';
            alif = {};bay = {};jeem = {};dummy = zeros(30,2);
            
            %Separating alif, bay, jeem in different arrays  
            for k = 1:length(imagefiles)
                filename = imagefiles(k).name;
                %disp(filename)
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
                 dummyTest(iter,:) = extractFeatures(im);
                 im = imread(bay{:,iter});
                 dummyTest(iter+10,:) = extractFeatures(im);
                 im = imread(jeem{:,iter});
                 dummyTest(iter+20,:) = extractFeatures(im);
            end
            
            % Setting return value
            save dummyTest;
            feature = dummyTest;
end
            