using JSON: print as JSON_print

function write(pa::String, di::Dict)::Nothing

    println(pa)

    if !occursin(r"\.json$", pa)

        error("path does not end with \".json\"")

    end

    open(pa, "w") do io

        return JSON_print(io, di, 4)

    end

    return nothing


end

export write
