"""
    photosynthesis(leaf::PhotoComponent,meteo,constants = Constants())
    photosynthesis!(leaf::PhotoComponent,meteo,constants = Constants())

Generic photosynthesis model for photosynthetic organs. Computes the assimilation and
stomatal conductance according to the models set for `leaf`.

The models used are defined by the types of the `photosynthesis` and `stomatal_conductance`
fields of `leaf`. For exemple to use the implementation of the Farquhar–von Caemmerer–Berry
(FvCB) model (see [`assimilation`](@ref)), the `leaf.photosynthesis` field should be of type
[`Fvcb`](@ref).

# Examples

```julia
meteo = Atmosphere(T = 20.0, Wind = 1.0, P = 101.3, Rh = 0.65)

# Using Fvcb model:
leaf = Leaf(photosynthesis = Fvcb(),
            stomatal_conductance = Medlyn(0.03, 12.0),
            Tₗ = 25.0, PPFD = 1000.0, Cₛ = 400.0, Dₗ = meteo.VPD)

photosynthesis(leaf, meteo)
```
"""
function photosynthesis(leaf::PhotoComponent,meteo,constants = Constants())
    leaf_tmp = deepcopy(leaf)
    assimilation!(leaf_tmp, meteo, constants)
    leaf_tmp.status
end

function photosynthesis!(leaf::PhotoComponent,meteo,constants = Constants())
    assimilation!(leaf, meteo, constants)
end
