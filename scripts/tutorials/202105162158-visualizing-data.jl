# load required modules
using DataFrames
using Gadfly
using Random
using RDatasets

# set seed for reproducible sequence of numbers
Random.seed!(42);

# load iris dataset
iris = dataset("datasets", "iris")

# scratter plot of sepal width vs sepal length
# with species as color, label and legend
plot(iris, x=:SepalLength, y=:SepalWidth, color=:Species, Geom.point, 
    Guide.xlabel("Sepal Length"), Guide.ylabel("Sepal Width"), 
    Guide.title("Sepal Width vs Sepal Length"))

# stack horizontally two scatter plots
figa = plot(iris, x=:SepalLength, y=:SepalWidth, color=:Species)
figb = plot(iris, x=:PetalLength, y=:PetalWidth, color=:Species)
hstack(figa, figb)

# boxplot of sepal length
plot(iris, y=:SepalLength, Geom.boxplot, Guide.ylabel("Sepal Length"))

# boxplot of sepal width vs sepal length
plot(iris, x=:SepalLength, y=:SepalWidth, Geom.boxplot)

# densityplot of sepal length to show 
# density of the sepal length over the particular range of each species
plot(iris, x=:SepalLength, color=:Species, Geom.density, Guide.xlabel("Sepal Length"))

# densityplot of sepal width to show 
# density of the sepal width over the particular range of each species
plot(iris, x=:SepalWidth, color=:Species, Geom.density, Guide.xlabel("Sepal Width"))

# histograms of sepal length distribution of each species
plot(iris, x=:SepalLength, color=:Species, Geom.histogram, Guide.xlabel("Sepal Length"))

# histograms of sepal width distribution of each species
plot(iris, x=:SepalWidth, color=:Species, Geom.histogram, Guide.xlabel("Sepal Width"))

# visualize sepal length density of each species
plot(
    iris, 
    x=:Species, y=:SepalLength, color=:Species, 
    Geom.violin, 
    Guide.ylabel("Sepal Length"), Guide.xlabel("Species"), 
    Guide.title("Species Sepal Length Density")
)

# visualize sepal width density of each species
plot(
    iris, 
    x=:Species, y=:SepalWidth, color=:Species, 
    Geom.violin, 
    Guide.ylabel("Sepal Width"), Guide.xlabel("Species"), 
    Guide.title("Species Sepal Width Density")
)

# visualize sepal length density of each species
plot(
    iris, 
    x=:Species, y=:SepalLength, color=:Species, 
    Geom.beeswarm, 
    Guide.ylabel("Sepal Length"), Guide.xlabel("Species"), 
    Guide.title("Species Sepal Length Density")
)

# visualize sepal width density of each species
plot(
    iris, 
    x=:Species, y=:SepalWidth, color=:Species, 
    Geom.beeswarm, 
    Guide.ylabel("Sepal Width"), Guide.xlabel("Species"), 
    Guide.title("Species Sepal Width Density")
)
