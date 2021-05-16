# load required modules
using CategoricalArrays
using CSV
using DataFrames
using Distributions
using Random
using StatsBase

# set seed for reproducible sequence of numbers
Random.seed!(42);

# create a sample dataframe
df = DataFrame(
    Dict(
        :x1 => rand(Normal(10, 1), 100),
        :x2 => [sample(["Good", "Better", "Best"], pweights([0.2, 0.5, 0.3])) for i=1:100],
        :x3 => rand(Pareto(10, 1), 100)
    )
)

# get type of df
typeof(df)

# access 1 row
df[1, :]

# access 1 and 2 row
df[[1, 2],:]

# access x1 column vector
df[:, :x1]

# access x1 column dataframe
df[:,[:x1]]

# access column x1 and x2
df[:, [:x1, :x2]]

# slicing dataframe by indeces
df[1:2, 1:2]

# slicing dataframe by column names
df[1:2, [:x1, :x2]]

# select only x2 == "Better"
mask = [df[i,:x2] == "Better" for i=1:nrow(df)]
df[mask, :]

# select only x2 == "Better" using bit vector
df[df[:, :x2] .== "Better", :]

# generate random string vector with missing values
arr = [isodd(i) ? 
    sample(["Good", "Better", "Best"], pweights([0.2, 0.4, 0.3])) : 
    missing for i = 1:nrow(df)]

# create categorical array
carr = categorical(arr)

levels(carr)

CSV.write("../../data/interim/df.csv", df)

CSV.read("../../data/interim/df.csv", DataFrame)

# obtain dataframe dimensions
size(df)

# obtain dataframe row number
nrow(df)

# obtain dataframe column number
ncol(df)

# access first 5 rows
first(df, 5)

# access last 5 rows
last(df, 5)

# describe dataframe
describe(df)

# describe dataframe column
describe(df[:, :x1])

# describe dataframe column
describe(df[:, [:x1]])

# sort dataframe by x1 ascending
sort(df, :x1)

# sort dataframe by x1 descending
sort(df, :x1, rev=true)

# sort by x1 asc and x2 desc
sort(df, [:x1, :x2], rev=[false, true])

# obtain count group by x2
combine(groupby(df, :x2), nrow)

# obtain sum group by x2
combine(groupby(df, :x2), :x1 => sum, :x3 => sum)

# obtain aggregates of x1 column
combine(df, :x1 => mean, :x1 => median, :x1 => std)
