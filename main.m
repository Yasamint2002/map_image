% ایجاد تصویر
imageSize = 512;
img = zeros(imageSize);

% ایجاد دایره
center = imageSize / 2;
radius = imageSize / 2;
h = imellipse(gca, [center-radius, center-radius, 2*radius, 2*radius]);

% ایجاد ماسک
binaryMask = createMask(h);

% اعمال ماسک به تصویر
resultImg = img .* binaryMask;

% نمایش تصویر اصلی و تصویر با دایره
figure;
subplot(1, 2, 1), imshow(img), title('تصویر اصلی');
subplot(1, 2, 2), imshow(resultImg), title('تصویر با دایره');
