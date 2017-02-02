function featureVector = extractFeatures(imageData)
                        [row,col] = find(imageData==0);
                        width = max(col)- min(col);
                        height = max(row)-min(row);
                        featureVector = [width,height];
end


                        

