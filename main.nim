import minimization
import linalg

const epsilon = 1e-6

let result = gradDescent(precision = epsilon)
echo("\nFunction minimum found with gradient descent is ", result.value, " at point:\n", result.point)

