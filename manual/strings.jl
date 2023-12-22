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

# Unicode and UTF-8
s = "\u2200 x \u2203 y"
println(s)
for i in s
    println(i)
end
println(collect(eachindex(s)))

# Concatenation + interpolation
greet = "Hello"
whom = "world"
res = string(greet, ", ", whom, ".\n")
println(res, "$greet, $whom.")

# Regular expressions
re = r"^\s*(?:#|$)"
println(typeof(re))
println(
    occursin(r"^\s*(?:#|$)", "not a comment"),
    occursin(r"^\s*(?:#|$)", "# a comment")
)
m = match(r"^\s*(?:#|$)", "# a comment")
if m === nothing
    println("not a comment")
else
    println("blank or a comment")
end

m = match(r"^\s*(?:#\s*(.*?)\s*$|$)", "# a comment ")
println(m, m.captures)