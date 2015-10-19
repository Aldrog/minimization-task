import
    minimization,
    linalg,
    terminal

const epsilon = 1e-6

proc prettyResultOutput(whatWeDid: string, value: float, point: Vector64) = 
    resetAttributes()
    stdout.write(whatWeDid & " is ")
    setForegroundColor(fgBlue)
    writeStyled($value)
    resetAttributes()
    stdout.write(" at point:\n")
    setForegroundColor(fgCyan)
    stdout.write($point)
    resetAttributes()
    stdout.write("\n")

let gradResult = gradDescent(precision = epsilon)
let coordResult = coordDescent(precision = epsilon)
prettyResultOutput("Function minimum found with gradient descent", gradResult.value, gradResult.point)
stdout.writeLine("")
prettyResultOutput("Function minimum found with coordinate descent", coordResult.value, coordResult.point)

