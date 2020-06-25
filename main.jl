include("read_processing_times.jl")
include("read_speeds.jl")
include("read_idle_costs.jl")
include("read_processing_costs.jl")
include("calculating_times.jl")
include("calculating_costs.jl")
include("used_processing_times.jl")
include("used_processing_costs.jl")
include("makespan.jl")
include("TC.jl")

println("The program is beggining..")

processing_time_instance = string("p1.dat")
p=read_processing_times(processing_time_instance)

speed_instance = string("s1.dat")
S=read_speeds(speed_instance)

cost_instance = string("pc1.dat")
pc=read_idle_costs(cost_instance)

idle_instance = string("i1.dat")
ic=read_idle_costs(idle_instance)

P=calculating_times(p,S)
Q=calculating_costs(P,pc)

a=[1,2,3]
v=[1,2,3]
p2D=used_processing_times(P,v)
q2D=used_processing_costs(Q,v)

Cmax=makespan(a,p2D)
tc=TC(q2D,p2D,ic,Cmax)
println(a," ",Cmax,"  ",tc)

"""
num_instances = 1
for i in 1:num_instances
    processing_time_instance = string("p", i, ".dat")
    p=read_processing_times(processing_time_instance)
    println(p)
end
"""
