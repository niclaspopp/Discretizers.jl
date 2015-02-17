using Discretizers
using Base.Test

function array_matches{S<:Integer, T<:Integer}(arr::AbstractVector{S}, arr2::AbstractVector{T})
    n = length(arr)
    @assert(length(arr2) == n)
    for i = 1 : n
        if arr[i] != arr2[i]
            return false
        end
    end
    true
end
function array_matches{S<:Real, T<:Real}(arr::AbstractVector{S}, arr2::AbstractVector{T}, abs_tolerance::FloatingPoint)
    n = length(arr)
    @assert(length(arr2) == n)
    for i = 1 : n
        if abs(arr[i] - arr2[i]) > abs_tolerance
            return false
        end
    end
    true
end



include("test_categorical_discretizer.jl")
include("test_linear_discretizer.jl")