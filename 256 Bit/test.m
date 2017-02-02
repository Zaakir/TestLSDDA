function feature = test()
                   % names = {10};
                   % for i=1:13
                   %     names{end+1} = 'string';
                   % end
                   % disp(names)
                   names = cell(10,1);
                   for i=1:10
                        names{i} = ['Sample Text ' num2str(i)];
                   end
                   disp(names)
end
