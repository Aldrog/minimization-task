import function
import math, linalg

proc euclidNorm(x: Vector64[function.size]): float =
    for i in 0..(function.size - 1):
        result = result + pow(x[i], 2.0)
    result = sqrt(result)

proc estimateDistance(x: Vector64[function.size]): float = 1.0/delta * euclidNorm(A*x + b)

proc gradDescent*(precision: float): tuple[value: float, point: Vector64[function.size]] =
    result.point = zeros(size)
    while estimateDistance(result.point) > precision:
        let q = A*result.point + b
        let mu = -(pow(euclidNorm(A*result.point + b), 2.0) / ((A.t*(A*result.point + b)).asMatrix(1,size)*(A*result.point + b))[0])
        result.point = mu*q + result.point
        echo(result.point, "\n", function.f(result.point))
    result.value = function.f(result.point)
