import minimization
import linalg

const epsilon = 1e-6

let gradResult = gradDescent(precision = epsilon)
let coordResult = coordDescent(precision = epsilon)
echo("\nFunction minimum found with gradient descent is ", gradResult.value, " at point:\n", gradResult.point)
echo("\nFunction minimum found with coordinate descent is ", coordResult.value, " at point:\n", coordResult.point)

