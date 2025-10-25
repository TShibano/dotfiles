if status is-interactive
    # Commands to run in interactive sessions can go here
    # PATH
    set PATH /opt/homebrew/bin $PATH # homebrew
    set PATH ~/.cargo/bin $PATH # cargo
end
starship init fish | source

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/citrus/.lmstudio/bin
# End of LM Studio CLI section

# zoxide
# ref: https://github.com/ajeetdsouza/zoxide -> Installation -> 2. Setup ~ -> Fish
zoxide init fish | source
