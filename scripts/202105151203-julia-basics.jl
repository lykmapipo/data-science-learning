# int variable
x = 99
x, typeof(x)

# float variable
y = 10.0
y, typeof(y)

s = "Data Science"
s, typeof(s)

# string variable
t = true
t, typeof(t)

# assignment operator
p = 2
q = 3
r = 4
p, q, r

# division operator
r / p

# multiplication operator
p * q

# addition operator
p + q

# substration operator
r - q

q - r

# power operator
q ^ p

# equal comparison
p == p

p == q

# not equal comparison
p != q

# greater than or equal comparison
p >= q

# greater than comparison
p > q

# less than or equal comparison
p <= q

# less than comparison
p < q

# int 16
int_16 = Int16(16)
int_16, typeof(int_16), typemax(Int16)

# int 32
int_32 = Int32(32)
int_32, typeof(int_32), typemax(Int32)

# int 64
int_64 = Int64(64)
int_64, typeof(int_64), typemax(Int64)

# int 128
int_128 = Int64(128)
int_128, typeof(int_128), typemax(Int128)

# float 16
float_16 = Float16(16.0)
float_16, typeof(float_16), typemax(Float16)

# float 32
float_32 = Float32(32.0)
float_32, typeof(float_32), typemax(Float32)

# float 64
float_64 = Float64(64.0)
float_64, typeof(float_64), typemax(Float64)

# check if is +ve infinity
isinf(1/0)

# check if is -ve infinity
isinf(-1/0)

# check if is not a number
isnan(0/0)

s1 = "Data Science"

s2 = "I'm learning Data Science"

# get index 1
s2[1]

# get last index
s2[end]

# get 2 up to 6
s2[2:6]

# get last 6
s2[end-6:end]

# concat
s2 * ". It's fun!"

# string interpolation
"1 + 2 = $(1 + 2)"

"$x + $y = $(x + y)"

length(s2)

# find first occurance of a pattern
findfirst("Data", s2)

s3 = "pqrs"
s4 = "pqrt"
s3, s4

# check if string are equal
s3 == s4

s3 > s4

s3 < s4

# tuple data
t1 = (1, 2, 3, 4)
t1, typeof(t1)

t2 = ("Data", 1, 2.0)
t2, typeof(t2)

u, v, w = t2
u

# vector data
a1 = Array{Int64}(undef, 3) # vector of length 3
a1, typeof(a1)

a2 = Array{Int64}(undef, (3,2)) # 3 x 2 matrix
a2, typeof(a2)

a3 = [1,2,3]
a3

a4 = [1 2 3]

# matrix data
a5 = [1 2 3 ; 4 5 6]

a6 = [1 2 3 ; 4 5 6 ; 7 8 9]

zeros((2,2))

zeros(Float64, (2,2))

ones((2,2))

ones(Float64, (2,2))

rand(Int64, (2,2))

randn((2,2))

# dictionary data
d0 = Dict("id" => 100, "age" => 24)

d0["id"]

d0["age"]

d0["level"] = 1
d0

haskey(d0, "id")

delete!(d0, "level")
d0

# compaund expression
c0 = begin
    j = 10
    k = 2
    j * k
end
c0

c1 = (j = 10; k = 2; j * k)
c1

# if check
if k == 2
    "two"
end

# if..else check
if k == 2
    "two"
else
    "not two"
end

k == 2 ? "two" : "not two"

# for loop
s5 = "Julia"

for str in s5
    println(str)
end

# nested for loop
odd = [1, 3, 5]
even = [2, 4, 6]

for i in odd, j in even
    println("i * j = $(i * j)")
end

# while loop
first = 0
last = 10

while first < last
    global first
    println(first)
    first = first + 1
end

# catch exception
try
    log(-1)
catch ex
    println(ex)
end

# declare function
function add(x, y)
    return x+y
end

add(1, 2)

add2(x,y) = x+y

add2(1,2)
