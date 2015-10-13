import math

proc gradDescent*(size: int, function: (proc(x: openarray[float]): float), precision: float): tuple[minimum: float, point: seq[float]] = 
    # Set initial point to 0
    result.point.newSeq(size)
    
