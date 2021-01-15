a = inputdlg('Enter a Square Matrix', 'input'); 
a = str2num(a{:});
determinate=det(a)
inverse=inv(a)
pdiagonal=diag(a)
sdiagonal=diag(fliplr(a))