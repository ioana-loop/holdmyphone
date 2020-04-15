vin=[1307, 542;
    1247, 814;
    2553, 715;
    2574, 454];    % Coordinates of corners on distorted image (See "tm.fig"
scl = 9;           % Scale: Pixels per mm
org = [220, 76];   % Original size of device [long wide]
vout=zeros(4,2);
vout(1,:)=vin(1,:);
vout(2,:)=[vin(1,1),            vin(1,2)+scl*org(2) ];
vout(3,:)=[vin(1,1)+scl*org(1), vin(1,2)+scl*org(2) ];
vout(4,:)=[vin(1,1)+scl*org(1), vin(1,2)            ];

im=imread("terminal harrispoints.png");
img=rgb2gray(im);
hm = homography_solve(vin',vout');
A = transpose(hm);
t = maketform('projective', A);
imOut = imtransform(img,t);
imshow(imOut);

imwrite(imOut, "imout.jpg");