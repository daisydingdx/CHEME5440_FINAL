include("PhasePortraitV2.jl")

function phase(d1, d2)

    u = @. -d1 + 1.0/(1.0+10.0*(d2^2/(0.1+d2^2))^2)
    v = @. -d2 + 1.0/(1.0+10.0*(d1^2/(0.1+d1^2))^2)

    return (u,v)
end


d1range = (0,1.1,35)          #Has the form (min, max, num points)
d2range = (0,1.1,35)          #Has the form (min, max, num points)
x₀ = ([0.0,0.3],[0.0, 0.3])  #initial state vectors; a common must be included after the first array
tspan=(0.0,30.0)             #time span

#Call the phaseplot functon to construct the phase portrait
phaseplot(phase, d1range, d2range, xinit=x₀, t=tspan, clines=true,
        norm=true, scale=0.5)
