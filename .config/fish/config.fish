if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_config theme choose "Catppuccin Mocha"

function fish_greeting

end

# pnpm
set -gx PNPM_HOME "~/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

starship init fish | source
