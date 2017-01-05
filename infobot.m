function[cenbot,vecbot] = infobot(a)
[maxi,maxj,dims] = size(a);
b = zeros(maxi,maxj);
c = zeros(maxi,maxj);
for i = 1:maxi
    for j = 1:maxj
        if(a(i,j,1)<40)
            b(i,j) = 1;
        end
        if(a(i,j,1)<70 && a(i,j,3)>135)
            c(i,j) = 1;
        end
    end
end
b = bwareaopen(b,100);
b = imfill(b,'holes');
cc = bwconncomp(b,4);
data1 = regionprops(cc,'basic');
cenblack = data1(1,1).Centroid;
c = bwareaopen(c,500);
c = imfill(c,'holes');
dd = bwconncomp(c,4);
data2 = regionprops(dd,'basic');
cenwhite = data2(1,1).Centroid;
cenbot = (cenblack + cenwhite)/2;
vecbot = cenwhite - cenblack;
figure, imshow(b);
figure, imshow(c);