# function ide --description "Launch citimer IDE environment with Zellij"
#     if set -q ZELLIJ_SESSION_NAME
#         echo "Already in zellij session."
#         return
#     end

#     set -l session_name (basename $PWD)
#     if contains $session_name (zellij list-sessions -ns 2>/dev/null)
#         zellij attach $session_name
#     else
#         zellij --new-session-with-layout ide --session $session_name
#     end
# end

function ide --description "Launch citimer IDE environment with Zellij"
    if set -q ZELLIJ_SESSION_NAME
        echo "Already in zellij session."
        return
    end

    set -l session_name (basename $PWD)
    if test (count $argv) -gt 0
        set session_name $argv[1]
    end

    if contains $session_name (zellij list-sessions -ns 2>/dev/null)
        zellij attach $session_name
    else
        zellij --new-session-with-layout ide --session $session_name
    end
end
