import function as f
import math, linalg

proc euclidNorm(x: Vector64[f.size]): float =
    for i in 0..(f.size - 1):
        result = result + pow(x[i], 2.0)
    result = sqrt(result)

proc estimateDistance(x: Vector64[f.size]): float = euclidNorm(f.A * x + f.b) / f.delta

proc gradDescent*(precision: float): tuple[value: float, point: Vector64[f.size]] =
    result.point = zeros(f.size)
    while estimateDistance(result.point) > precision:
        let q = f.A * result.point + f.b
        let mu = -(pow(euclidNorm(q), 2.0) / ((f.A.t * q).asMatrix(1, f.size) * q)[0])
        result.point = mu*q + result.point
        echo(result.point, "\n", f(result.point))
    result.value = f(result.point)
