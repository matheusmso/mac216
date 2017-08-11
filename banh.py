#!/usr/bin/python3

from PIL  import Image
from math import fabs,cos,sinh



# tamanho da tela
Tx = 800
Ty = 800

# Domínio da função
[xi,xf] = [-5.0, 5.0]
[yi,yf] = [-5.0, 5.0]

# função desejada
def f(x,y):
    return x*x + y*y
#    return cos(x*x) + sinh(y*y)

# parâmetros de cálculo
h = .3
ε = .15

# verifica se x é múltiplo de h a menos de ε
def modulo(z) :
    m = fabs(z) + ε
    k = m//h
    if (m-k*h) < ε/2.0 :
        return True
    else:
        return False


# Cria a imagem
img = Image.new('1', (Tx,Ty))
pix = img.load()

# incremento em x e y
δx = (xf - xi)/Tx
δy = (yf - yi)/Ty

for aj in range(Ty) :
    for ai in range(Tx) :
        z=f(xi+δx*ai, yi+δy*aj)
        if modulo(z) :
            pix[ai,aj] = 0
        else:
            pix[ai,aj] = 0xffffff


# Mostra o resultado
img.show()

