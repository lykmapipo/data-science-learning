
# load required modules
using DataFrames
using GeoJSON
using LeafletJS
using Random
using RDatasets

# set seed for reproducible sequence of numbers
Random.seed!(42);

# load geojson data
nbhd = GeoJSON.parsefile("../../data/raw/neighborhoods.geojson")
rodents = GeoJSON.parsefile("../../data/raw/rodents.geojson");

# create layers
layers = Vector{Layer}(undef,0)
push!(layers, Layer(nbhd))
push!(layers, Layer(rodents));

# render map with stament default tile
LeafletMap(layers, [42.35, -71.08])

# render map with stamen watercolor tile
LeafletMap(layers, [42.35, -71.08], provider = Provider.Stamen(:watercolor))

# render map with stamen terrain tile
LeafletMap(layers, [42.35, -71.08], provider = Provider.Stamen(:terrain))

# render map with stamen toposm-features tile
LeafletMap(layers, [42.35, -71.08], provider = Provider.Stamen(Symbol("toposm-features")))

# render map with OSM mapnok tile
LeafletMap(layers, [42.35, -71.08], provider = Provider.OSM())

# render map with OSM black and white tile
LeafletMap(layers, [42.35, -71.08], provider = Provider.OSMBlackAndWhite())

# render map with OSM HOT tile
LeafletMap(layers, [42.35, -71.08], provider = Provider.OSMHOT())

# render map with CARTO light tile
LeafletMap(layers, [42.35, -71.08], provider = Provider.CARTO())

# render map with CARTO dark tile
LeafletMap(layers, [42.35, -71.08], provider = Provider.CARTO(:dark_all))

# render map with NASA GIBS light MODIS Terra tile
LeafletMap(layers, [42.35, -71.08], provider=Provider.NASAGIBS())
