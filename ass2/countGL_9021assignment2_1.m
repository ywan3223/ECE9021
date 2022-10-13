function y = countGL_9021assignment2_1(im)
     im = rgb2gray(im); % convert image to grayscale
     [dim_x, dim_y] = size(im); % obtain the dimension of image matrix
     subplot(2,2,1) % create position for image
     imshow(im) % show the image
     I2 = im; 
     %iterate over each image element and check which pixel is below 140
     for i = 1:dim_x
        for j = 1:dim_y 
            if I2(i,j) <= 140
                I2(i,j) = 0; % convert it to 0 to change the pixel to dark
            end
        end
     end
     subplot(2,2,2) % create position for I2
     imshow(I2) % show the image
     

