if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_config theme choose catppuccin-mocha
function fish_greeting
    fastfetch
end

# pnpm
set -gx PNPM_HOME "/home/devcat/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

starship init fish | source

# opencode
fish_add_path /home/devcat/.opencode/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
