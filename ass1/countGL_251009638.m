% function y returns a row vector
% im is a unit8 image matrix, v is a row vector of strictly increasing values
function y = countGL_251009638(im, v)
    
    % obtain the dimension of image matrix
    [dim_x, dim_y] = size(im);
    % obtain the length of vector v
    N = size(v,2);
    % set y function to a all zero matrix with 1*N-1 vectors
    y = zeros(1,N-1);
    % iterate over each image element and check which two adjacenet vector in v lies between
    % increase the corresponding element in vector y
    for i = 1:dim_x
        for j = 1:dim_y
            for k = 1:N - 1           
                if im(i,j) >= v(k) && im(i,j) < v(k+1)
                    y(k) = y(k) + 1;
                    %breakout when it found to save time
                    break  
                end               
            end               
        end      
    end
end

