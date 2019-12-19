function count_nucleotides(strand::AbstractString)
    nucleotides = Dict(['A', 'C', 'G', 'T'] .=> 0)
    for letter in strand
        if occursin(letter, "ACGT")
            nucleotides[letter] += 1
        else
            throw(DomainError("$letter must be in 'ACGT'"))
        end
    end
    return nucleotides
end
