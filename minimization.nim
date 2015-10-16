import function
import math, linalg

proc gradDescent*(precision: float): tuple[minimum: float, point: Vector64[function.size]] = 
    result.point = zeros(size)
    # Here should be euclidian distance of A*point+b
    var maxDistance = 1/sigma * (A*result.point + b)
    
