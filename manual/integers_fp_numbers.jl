println(typeof(1))
println(Sys.WORD_SIZE)

println(Int)
println(UInt)

binary_x = 0b1010
println(binary_x)

x = 0x01
println(typeof(x))
x = 0x0001
println(typeof(x))

y = -0x2
println(y, typeof(y))

println(bitstring(0.0))
println(bitstring(-0.0))

println(Inf)
println(0 * Inf)

println(eps(Float32))

x = 3
println(2^2x)

println(zero(Float32))