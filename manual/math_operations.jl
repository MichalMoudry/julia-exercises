x = 123
x = ~x
println(x)

x = nand(123, 123)
println(x)

nan_test = [1 NaN]
println(typeof(nan_test), " - ", nan_test == nan_test)

# numerical conversions
temp1 = Int8(127)
temp2 = Int8(127.0)
println(temp1, temp2)

rounded = round(Int8,127.4)
println(typeof(rounded), rounded)