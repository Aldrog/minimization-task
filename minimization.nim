import function as f
import math, linalg

proc euclidNorm(x: Vector64[f.size]): float =
    for i in 0..(f.size - 1):
        result = result + pow(x[i], 2.0)
    result = sqrt(result)

proc estimateDistance(x: Vector64[f.size]): float = euclidNorm(f.grad(x)) / f.delta

proc gradDescent*(precision: float): tuple[value: float, point: Vector64[f.size]] =
    stderr.writeLine("\n@ Gradient descent method @\n")
    result.point = zeros(f.size)
    stderr.writeLine("Starting point:\n", result.point, "\nf = ", f(result.point), "\n")
    var step = 1
    while estimateDistance(result.point) > precision:
        let q = f.grad(result.point)
        let mu = -(pow(euclidNorm(q), 2.0) / (q.asMatrix(1, f.size) * A * q)[0])
        result.point = mu*q + result.point
        stderr.writeLine("Step #", step, ":\n", result.point, "\nf = ", f(result.point), "\n")
        step += 1
    result.value = f(result.point)

proc ort(i: range[0..(f.size - 1)]): Vector64[f.size] =
    result = zeros(f.size)
    result[i] = 1

proc coordDescent*(precision: float): tuple[value: float, point: Vector64[f.size]] =
    stderr.writeLine("\n@ Coordinate descent method @\n")
    result.point = zeros(f.size)
    stderr.writeLine("Starting point:\n", result.point, "\nf = ", f(result.point), "\n")
    var step = 1
    while estimateDistance(result.point) > precision:
        let fGrad = f.grad(result.point)
        var ortIndex = 0
        for i in 1..(f.size - 1):
            if abs(fGrad[i]) > abs(fGrad[ortIndex]):
                ortIndex = i
        let q = ort(ortIndex)
        let mu = -((q * fGrad) / (q * (f.A*q)))
        result.point = mu*q + result.point
        stderr.writeLine("Step #", step, ":\n", result.point, "\nf = ", f(result.point), "\n")
        step += 1
    result.value = f(result.point)

