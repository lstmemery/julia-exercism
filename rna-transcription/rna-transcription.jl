function to_rna(dna::AbstractString)
    map(lookup, dna)
end

function lookup(base::Char)
    transcript_dict = Dict('G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
    if occursin(base, "GCTA")
        transcript_dict[base]
    else
        throw(ErrorException("$base must be in 'ACGT'"))
    end
end
