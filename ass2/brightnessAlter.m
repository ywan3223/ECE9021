function y = brightnessAlter(im,brightness,trend)
     im = rgb2gray(im);
     [dim_x, dim_y] = size(im);
     subplot(2,2,1) % create position for image
     imshow(im) % show the image
     I2 = im;
     %iterate over each image element and check
     for i = 1:dim_x
        for j = 1:dim_y
            % determine the trend choice and change the pixel by brightness
            if trend == "increase"
               I2(i,j) = I2(i,j)*(1+brightness/100);
            elseif trend == "decrease"
               I2(i,j) = I2(i,j)*(1-brightness/100);
            end
        end
     end
     subplot(2,2,2) % create position for I2
     imshow(I2) % show the image
     