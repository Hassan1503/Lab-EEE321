a = inputdlg('Enter a Square Matrix of A', 'input'); 
a = str2num(a{:});
b = inputdlg('Enter a Coloumn Matrix of B', 'input'); 
b = str2num(b{:});
X=inv(a)*b