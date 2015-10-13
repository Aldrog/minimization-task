import function as fData
import minimization

const epsilon = 1e-6

echo "hello ", f([1.0, 0.0, 2.0])
let result = gradDescent(fData.size, fData.f, epsilon)
echo "Function minimum found with gradient descent is ", result.minimum, " at point ", result.point

