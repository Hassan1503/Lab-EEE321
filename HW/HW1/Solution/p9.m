syms x
a=sin(log(sec(exp(x))));
differentiate=diff(a);
integration=int(a);
pretty(differentiate)
pretty(integration)