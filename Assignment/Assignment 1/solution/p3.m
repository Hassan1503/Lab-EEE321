a = inputdlg('Enter a single array vector', 'input'); 
a = str2num(a{:})
x=length(a)/3;
for i=1:x
    for j=1:x;
        if i==1;
            y(i,j)=a(j);
        elseif i==2
            y(i,j)=a(j+3);
        else
            y(i,j)=a(j+6);
        end
    end
end
y