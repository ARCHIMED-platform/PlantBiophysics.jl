"""
Physical constants

The definition and default values are:

- `K₀ = -273.15`: absolute zero (°C)
- `R = 8.314`: universal gas constant (``J\\ mol^{-1}\\ K^{-1}``).
- `Dₕ₀ = 21.5e-6`: molecular diffusivity for heat at base temperature, applied in the integrated form of the
Fick’s Law of diffusion (``m^2\\ s^{-1}``). See eq. 3.10 from Monteith and Unsworth (2013).
- `Cₚ = 1013.0`: Specific heat of air at constant pressure (``J\\ K^{-1}\\ kg^{-1}``), also
known as efficiency of impaction of particles. See Allen et al. (1998), or Monteith and
Unsworth (2013).
- `ε = 0.622`: ratio of molecular weights of water vapor and air. See Monteith and
Unsworth (2013).

# References

Allen, Richard G., Luis S. Pereira, Dirk Raes, et Martin %J Fao Smith. 1998.
« Crop evapotranspiration-Guidelines for computing crop water requirements-FAO Irrigation
and drainage paper 56 » 300 (9): D05109.

Monteith, John, et Mike Unsworth. 2013. Principles of environmental physics: plants,
animals, and the atmosphere. Academic Press.
"""
Base.@kwdef struct Constants{T}
    K₀::T = -273.15
    R::T = 8.314
    Dₕ₀::T = 21.2e-6
    Cₚ::T = 1013.0
    ε::T = 0.622
end
