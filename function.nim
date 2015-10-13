import math

const size* = 3

proc f*(x: openarray[float]): float {.procvar.} = 2*pow(x[0], 2.0) + 5*pow(x[1], 2.0) + 6*pow(x[2], 2.0) + x[0]*x[1] - x[1]*x[2] + x[0]*x[2] + x[0] - 2*x[1] + 3*x[2] + 20

