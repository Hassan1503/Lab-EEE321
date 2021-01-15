
a = inputdlg('Enter a single array vector', 'input'); 
a = str2num(a{:})
%a=[11 17 23 50 31 41];
for i=1:length(a)
    for j=1:length(a)
        if i==j
            nm(i,j)=a(i)
        end
    end
end
nm=fliplr(nm)
nm