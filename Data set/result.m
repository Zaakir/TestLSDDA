function target = result()
                    array = zeros(30,3);
                    array(1:10,1) = 1;
                    array(11:20,2) = 1;
                    array(21:30,3) = 1;
                    target = array;
                    save target;
                    
                    
end
