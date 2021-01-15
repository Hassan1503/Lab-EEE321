a = inputdlg('Enter a Square Matrix', 'input'); 
a = str2num(a{:});
d=diag(a);
d=fliplr(d);
d
