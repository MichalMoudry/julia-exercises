using Dates
using UUIDs

function f(x, y)
    x + y
end
println(f(5, 10))

y(x, y) = x + y
println(y(10, 5))

# Argument passing behaviour
function array_mut(x, y::Integer)
    x[1] = 42
    y += 7
    return y
end
a = [4,5,6]
b = 3
println(a,b)
array_mut(a,b)
println(a,b)

# Argument type declarations
fib(n::Integer) = n ≤ 2 ? one(n) : fib(n-1) + fib(n-2)
println(fib(10))

# Return keyword
function g(x,y)
    return x*y
end
println(typeof(g(10, 5)))

# Return nothing
function printx(x)
    println(x)
    return
end
printx("Test")

# Operators are functions
println(+(1,2,3)) # = 6

# Anonymous functions
res = map(round, [1.2, 3.5, 1.7])
println(res)
a = zeros(3)
map!(x -> x * 2, a, [1, 2, 3])
println(a)
test = i -> i * 2
println(test(5))

# Tuples
x = (a=2, b=1+2)
println(x)
m, l = x
println(m, l)

a, b... = "hello"
println(b, a)

# Varargs function
bar(a,b,x...) = (a,b,x)
baz(a,b) = a + b
args = [1,2]
struct Test
    Id::UUID
    Name::String
    DateCreated::Date
end

function date(year::Int64, month::Int64=1, days::Int64=1)
    err = Dates.validargs(Date, year, month, days)
    err === nothing || throw(err)
    return Date(
        Dates.UTD(Dates.totaldays(year, month, days))
    )
end
println(date(2023, 5, 18))