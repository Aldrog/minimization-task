import math, linalg

# x dimension
const size* = 3

let 
    A* = dmatrix(size, size, @[
        @[4.0, 1.0,  1.0 ],
        @[1.0, 10.0, -1.0],
        @[1.0, -1.0, 12.0] ])
    # A is diagonally dominant
    sigma* = 3.5
    
    b* = dvector(size, @[1.0, -2.0, 3.0])
    c* = 20.0
# f(x) = 1/2 * xT * A * x + xT * b + c

proc grad*(x: Vector64[size]): Vector64[size] = A*x + b

#proc f*(x: Vector64[size]): float = 0.5 * x.asMatrix(1, size).t * A * x + x.asMatrix(1, size).t * b + c

