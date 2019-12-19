function ispangram(input::AbstractString)
    input_set = Set(lowercase(input))
    alphabet = Set("abcdefghijklmnopqrstuvwxyz")
    isempty(setdiff(alphabet, input_set))
end
