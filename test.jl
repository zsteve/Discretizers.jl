using Discretizers
using Random
using Distributions
using LinearAlgebra

ρ = convert(UnivariateMixture, MixtureModel(Normal[Normal(-1, 0.5), Normal(1, 0.5)], [0.5, 0.5]))
x = rand(ρ, 100)
be = binedges(DiscretizeBayesianBlocks(), x)
