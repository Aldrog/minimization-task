import minimization
import linalg

const epsilon = 1e-6

let result = gradDescent(precision = epsilon)
echo("Function minimum found with gradient descent is ", result.minimum, " at point:\n", result.point)

