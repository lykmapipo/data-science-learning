
# load required modules
using CategoricalArrays
using CSV
using DataFrames
using Distributions
using Plots
using Random
using StatsBase

# set seed for reproducible sequence of numbers
Random.seed!(42);

# draw 1000 observations from a normal distribuition 
# of mean 100 and standard deviation 10
xnorm = rand(Normal(100, 10), 1000)
histogram(xnorm)

# draw 1000 observations from a uniform distribuition 
# of minimum 0 and maximum 10
xunif = rand(Uniform(0, 10), 1000)
histogram(xunif)

# draw 1000 observation from bernoulli distribution with
# probability of success 0.3
xbern = rand(Bernoulli(0.3), 1000)
histogram(xbern)

# draw 1000 observation from binomial distribution with
# probability of success 0.3 and 30 number of trials
xbin = rand(Binomial(30, 0.3), 1000)
histogram(xbin)

# draw 1000 observations from a poisson distribuition 
# of average rate of occurrence 100
xpoiss = rand(Poisson(100), 1000)
histogram(xpoiss)
