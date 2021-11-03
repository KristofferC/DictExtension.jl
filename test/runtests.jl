TE = joinpath(homedir(), "Downloads", "DictExtension.test", "")

if isdir(TE)

    rm(TE; recursive = true)

end

mkdir(TE)

println("Made ", TE, ".")

using Revise
using BenchmarkTools

using JSON

using DictExtension

di1 = Dict("1A" => 1, "B" => Dict("C" => 1, "1D" => 1))

di2 = Dict("2A" => 2, "B" => Dict("C" => 2, "2D" => 2))

id = 4

JSON.print(DictExtension.merge(di1, di2), id)

JSON.print(DictExtension.merge(di2, di1), id)

summarize(
    Dict(1 => "a", 2 => "a", 3 => "b", 4 => nothing, 5 => nothing, 6 => NaN),
)

convert_to_keyword_argument(Dict("a" => 1, "b" => 2.0))

da = joinpath("data", "")

JSON.print(DictExtension.read(joinpath(da, "example_1.json")), id)

JSON.print(DictExtension.read(joinpath(da, "example_2.json")), id)

js = joinpath(TE, "write")

di = Dict(
    "Luffy" => "Pirate King",
    "Crews" => [
        "Luffy",
        "Zoro",
        "Nami",
        "Usopp",
        "Sanji",
        "Chopper",
        "Robin",
        "Franky",
        "Brook",
        "Jinbe",
    ],
    "episode" => 1030,
)

;

try

    DictExtension.write(js, di)

catch er

    er

end

js = string(js, ".json")

;

DictExtension.write(js, di)

DictExtension.read(js)

rm(TE; recursive = true)

println("Removed ", TE, ".")
