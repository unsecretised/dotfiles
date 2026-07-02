# -------------------------------------------------------------------
# Rice (Window Manager/Status Bar - yabai, sketchybar, skhd)
# -------------------------------------------------------------------
alias startup 'brew services start sketchybar; and sudo yabai --load-sa; and yabai --start-service; and skhd --start-service'
alias stopdown 'brew services stop sketchybar; and yabai --stop-service; and skhd --stop-service'
alias upwm 'brew services start rift'
alias downwm 'brew services stop rift'
alias upsketch 'brew services start sketchybar'
alias downsketch 'brew services stop sketchybar'
alias upskhd 'skhd --start-service'
alias downskhd 'skhd --stop-service'
# NOTE: The last alias for 'stopdown' in your Zsh was a duplicate but
# defined using other aliases. I'll include the composite version here.
alias stopdown 'downwm; and downsketch; and downskhd'
alias start 'brew services start'
alias stop 'brew services stop'
alias rcskhd 'v ~/.skhdrc'
alias sketch 'z ~/.config/sketchybar/; and hx'
alias resketch 'sketchybar --reload'
alias rerift 'brew services restart rift'
alias riftconf 'hx ~/.config/rift/config.toml'

# -------------------------------------------------------------------
# Ollama (Local LLM)
# -------------------------------------------------------------------
# Note: Fish uses ';' to chain commands, similar to '&&' in Zsh/Bash,
# but using '; and' makes the subsequent command conditional on success.
# I'll use ';' here as the history clearing should run regardless.
alias deepseek 'clear; and ollama run deepseek-r1:8b; and echo > ~/.ollama/history'
alias dolphin 'clear; and ollama run dolphin3; and echo > ~/.ollama/history'
alias ldolphin 'clear; and ollama run CognitiveComputations/dolphin-llama3.1; and echo > ~/.ollama/history'
alias danger 'clear; and ollama run llama2-uncensored:7b; and echo > ~/.ollama/history'
alias granite 'clear; and ollama run granite4'
alias gem gemini # Added for completeness

# -------------------------------------------------------------------
# Network/System/Development Tools
# -------------------------------------------------------------------
alias nmap 'sudo nmap'
alias ms 'mysql -u'
alias stl 'stripe listen --forward-to localhost:3000/webhook'
alias python python3
alias py python3
alias su sudo
alias rm 'rm -i'
# Fish uses 'bat' with specific options for 'cat' replacement.
# alias cat 'bat --style header --style snip --style changes --style header'
alias devenv deactivate
alias redis-start 'redis-server /opt/homebrew/etc/redis.conf'

# -------------------------------------------------------------------
# TMUX
# -------------------------------------------------------------------
alias tx tmux
alias la 'tmux a -t'
alias ta 'tmux a'
alias ka 'tmux kill-session -a'
alias tl 'tmux ls'
alias txcfg 'hx ~/.config/tmux/tmux.conf'

# -------------------------------------------------------------------
# SSH
# -------------------------------------------------------------------
alias rpi 'ssh rpi'

# -------------------------------------------------------------------
# Gleam
# -------------------------------------------------------------------
alias gnew 'gleam new --skip-github'
alias gr 'gleam run'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias ga 'git add'
alias gc 'git commit -m'

# -------------------------------------------------------------------
# Cargo/Rust
# -------------------------------------------------------------------
alias cr 'cargo run'
alias cc 'cargo check'
alias cb 'cargo build'

alias trunk '~/bin/trunk'
alias zellij '~/bin/zellij'
alias act '~/bin/act'

# -------------------------------------------------------------------
# Zig
# -------------------------------------------------------------------
alias zr 'zig build run'
alias zbu 'zig build'
alias zt 'zig build test'

# -------------------------------------------------------------------
# Navigation/Config/Utilities
# -------------------------------------------------------------------
alias ff 'clear; and echo; and fastfetch'
alias nf 'clear; and echo; and neofetch'
alias wm 'clear; and echo; and welcome-msg'
alias matrix 'cmatrix -C cyan'
alias c clear
alias cl clear
alias .. 'cd ../'
alias ... 'cd ../../'
alias rzsh 'source ~/.zshrc'
alias r 'source ~/.config/fish/config.fish'
alias vim hx
alias v hx
alias nivm hx
alias ls 'ls -a'
alias dr 'deno run --allow-all'
alias lion Lion-cli
alias speed hx
#alias nc 'z ~/.config/nvim/; and nvim'

# -------------------------------------------------------------------
# Zoxide Navigation (Assumes 'zoxide init fish' is in config.fish)
