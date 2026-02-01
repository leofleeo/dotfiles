if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_config theme choose "Catppuccin Mocha"

function fish_greeting
    echo "Hi twin welcome to the terminal"
end

# pnpm
set -gx PNPM_HOME "/home/devcat/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
