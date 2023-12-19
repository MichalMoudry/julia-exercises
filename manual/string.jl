# Characters
y = 'x'
println(y, typeof(y))
y = Int('x')
println(y, typeof(y))

# String basics
str = "Hello, world.\n"
println(str[begin], str[1], str[end-1], str[1:5])
substr = SubString(str, 1, 5)
println(substr, typeof(substr))
println(chomp(str))