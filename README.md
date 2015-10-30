# Task
Find function minimum with gradient descent and coordinate descent optimization algorithms with `ε=10^-6` proximity.
```
f(x,y,z)=2x^2+5y^2+6z^2+xy-yz+xz+x-2y+3z+20
```

#Result
```
Function minimum found with gradient descent is 19.35398230088506 at point:
[ -0.2477874388950353
  0.203539759804743
  -0.2123893156761264 ]

Function minimum found with coordinate descent is 19.35398230088513 at point:
[ -0.247787547049061
  0.2035397292336799
  -0.2123895410374359 ]
```

#Requirements
For compiling this you will need the following:
* Nim compiler version 0.11 or higher
* linalg module
```
nimble install linalg
```
