function ls
    eza --icons $argv
end

function ll
    eza -l --icons --git $argv
end

function la
    eza -la --icons --git $argv
end

function lt
    eza --tree --icons $argv
end
