function distance(s1::AbstractString, s2::AbstractString)
    if length(s1) == length(s2)
        sum(map(!=, s1, s2))
    else
        throw(ArgumentError("Not same length"))
    end
end
