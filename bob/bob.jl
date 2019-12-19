function bob(stimulus::AbstractString)

    clean_stimulus = strip(stimulus)

    function has_uppercase_letters(letters)
        letters == uppercase(letters) && any(isletter, letters)
    end

    if isempty(clean_stimulus)
        return "Fine. Be that way!"
    elseif endswith(clean_stimulus, "?")
        if has_uppercase_letters(clean_stimulus)
            return "Calm down, I know what I'm doing!"
        else
            return "Sure."
        end
    elseif has_uppercase_letters(clean_stimulus)
        return "Whoa, chill out!"
    else
        return "Whatever."
    end
end
