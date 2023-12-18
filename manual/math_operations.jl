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

test = 123 ⊽ 124
println(test, " - ", typeof(test))

# Vectorized "dot" operators
test_array = [1,2,3]
computed_array = test_array .^ 3
println(test_array, " => ", computed_array)
computed_array = (test_array .+ 1) .*2
println(test_array, " => ", computed_array)
computed_array = sin.(test_array)
println(test_array, " => ", computed_array)

# Operator Procedence and Associativity
println(Base.operator_precedence(:+), Base.operator_precedence(:*))
