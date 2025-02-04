using SearchLight
using Genie

function Genie.Renderer.Json.JSON3.StructTypes.StructType(::Type{T}) where {T<:SearchLight.AbstractModel}
  Genie.Renderer.Json.JSON3.StructTypes.Struct()
end

function Genie.Renderer.Json.JSON3.StructTypes.StructType(::Type{SearchLight.DbId})
  Genie.Renderer.Json.JSON3.StructTypes.Struct()
end

SearchLight.Configuration.load(context = @__MODULE__)
SearchLight.connect()

try
  SearchLight.Migration.init()
catch
end
SearchLight.Migration.allup()