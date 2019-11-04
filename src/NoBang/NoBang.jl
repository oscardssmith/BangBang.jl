module NoBang

using Base.Iterators: Pairs
using Base: ImmutableDict
using Requires
using ConstructionBase: setproperties

if VERSION < v"1.1-"
    using Future: copy!
end

include("singletoncontainers.jl")
include("base.jl")
include("linearalgebra.jl")
include("singletonof.jl")

function __init__()
    @require StaticArrays="90137ffa-7385-5640-81b9-e52037218182" begin
        include("staticarrays.jl")
    end
end

end  # module
