# Complex numbers
x = 1 + 2im
println(x, " => ", typeof(x))

x = (1 + 2im)*(2 - 3im)
println(x, " real part:", real(x))

x = 1 + Inf*im
println(x, " real part:", real(x))

# Rational numbers
y = 2//3
println(y, typeof(y))

y = 1//2 * 3//2
println(y)