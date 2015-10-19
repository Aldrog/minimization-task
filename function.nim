import math, linalg

# x dimension
const size* = 3

let 
    A* = dmatrix(size, size, @[
        @[4.0, 1.0,  1.0 ],
        @[1.0, 10.0, -1.0],
        @[1.0, -1.0, 12.0] ])
    # A is diagonally dominant
    delta* = 2.0
    
    b* = dvector(size, @[1.0, -2.0, 3.0])
    c* = 20.0
# f(x) = 1/2 * xT * A * x + xT * b + c

proc grad*(x: Vector64[size]): Vector64[size] = A*x + b

proc f*(x: Vector64[size]): float = 0.5 * ((A.t * x).asMatrix(1,size) * x)[0] + x * b + c

