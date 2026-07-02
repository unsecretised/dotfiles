function rustws
    if test (count $argv) -lt 1
        echo "Usage: rustws <workspace-name> [crate-names...]"
        return 1
    end

    set workspace_name $argv[1]
    set crates $argv[2..-1]

    mkdir -p $workspace_name
    cd $workspace_name; or return 1

    # Create root Cargo.toml
    echo "[workspace]" > Cargo.toml
    echo "members = [" >> Cargo.toml
    for c in $crates
        echo "    \"$c\"," >> Cargo.toml
    end
    echo "]" >> Cargo.toml
    echo "resolver=\"3\"" >> Cargo.toml

    # Add .gitignore
    echo "/target" > .gitignore
    echo "**/*.rs.bk" >> .gitignore
    echo "Cargo.lock" >> .gitignore

    # Create crates
    for c in $crates
        echo "Creating crate: $c"
        cargo new $c --bin
    end

    echo "✅ Workspace '$workspace_name' initialized!"
end

function precmd --on-event fish_prompt
    printf "\e[5 q"
end

function nothing
    if test (blueutil --is-connected 2C:BE:EB:0B:1E:0F) = "1"
        osascript -e 'tell application "Spotify" to playpause'
        blueutil --disconnect 2C:BE:EB:0B:1E:0F
    else
        blueutil --connect 2C:BE:EB:0B:1E:0F
    end
end

function link
    if test -z "$argv[1]"
        echo "Usage: link <github_repo_url>"
        return 1
    end

    set REPO_URL $argv[1]
    set CURRENT_BRANCH (git symbolic-ref --short HEAD 2>/dev/null)

    if test -z "$CURRENT_BRANCH"
        echo "Error: Couldn't detect current Git branch."
        return 1
    end

    git remote add origin $REPO_URL
    git push -u origin $CURRENT_BRANCH
end

function venv
    if test -z "$argv[1]"
        echo "Usage: venv <dir_for_venv>"
        return 1
    end

    set VENV_DIR $argv[1]
    source "$VENV_DIR/bin/activate.fish"
end

function gonew
    if test -z "$argv[1]"; or test -z "$argv[2]"
        echo "Usage: gonew <dir> <project name>"
        return 1
    end

    if test -d "$argv[1]"
        echo "Error: directory '$argv[1]' already exists."
        return 1
    end

    mkdir $argv[1]; and cd $argv[1]; or return 1
    go mod init $argv[2]; or return 1
    git init; or return 1
end

function zignew
    if test -z "$argv[1]"
        echo "Usage: zignew <project>"
        return 1
    end
    
    if test -d "$argv[1]"
        echo "Error: directory $argv[1] already exists."
        return 1
    end

    mkdir $argv[1]; and cd $argv[1]
    zig init
end

function nvm
    set -gx NVM_DIR "$HOME/.nvm"
    test -s "$NVM_DIR/nvm.sh"; and source "$NVM_DIR/nvm.sh"
    command nvm $argv
end
