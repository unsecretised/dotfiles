# Set Fish variables (equivalent to Zsh 'export' for environment variables)

# Export PATH, prepending new directories.
# Fish uses an array for $PATH, and 'set -gx' sets a global, exported variable.
# We explicitly set the PATH components first, then append the existing $PATH.

# Get JAVA_HOME first
set -l java_home_output (/usr/libexec/java_home -v 23)
if test $status -eq 0
    set -gx JAVA_HOME $java_home_output
    # Add Java bin to PATH
    set -gx PATH $JAVA_HOME/bin $PATH
end

# Add other custom PATH entries
# set -gx PATH $HOME/.aliases/bin $PATH
fish_add_path $HOME/.spicetify $PATH
fish_add_path $HOME/Library/pnpm $PATH
fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/bin

# oh-my-posh init fish --config $HOME/.config/omp/omp.json | source

# Set other environment variables
set -gx STARSHIP_LOG error

starship init fish | source

set -gx EDITOR hx
# Initialize Starship Prompt
# Fish uses 'fish_add_path' for adding to PATH in a way that avoids duplicates.
# However, for prompt initialization, 'eval' is often still needed.
# status --is-interactive; and eval (starship init fish)

# Initialize Zoxide
status --is-interactive; and zoxide init fish | source

# jj util completion fish | source

# Source other environment files
# source "$HOME/.local/bin/env"
# source "$HOME/.deno/env"
fish_add_path $HOME/.deno/bin
fish_add_path $HOME/.local/bin

# Aliases (Use 'alias' command in Fish)
alias .. 'cd ../'
alias ... 'cd ../../'

# Sourcing custom scripts
# NOTE: Fish scripts need Fish syntax, not Zsh/Bash.
# Ensure 'aliases.sh' and 'shortcuts.sh' are converted to Fish syntax
# or change their extensions to '.fish'. Assuming they are converted:
source ~/.config/fish/aliases.fish
source ~/.config/fish/shortcuts.fish

set fish_greeting
# Initial commands (commands run on startup)
# echo
# welcome-msg

set -gx WASMTIME_HOME "$HOME/.wasmtime"

string match -r ".wasmtime" "$PATH" >/dev/null; or set -gx PATH "$WASMTIME_HOME/bin" $PATH
set -x SDKROOT (xcrun --sdk macosx --show-sdk-path)

# opencode
fish_add_path /Users/umangsurana/.opencode/bin
