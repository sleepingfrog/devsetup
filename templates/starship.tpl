# Get editor completions based on the config schema
"$schema" = 'https://starship.rs/config-schema.json'

# Inserts a blank line between shell prompts
add_newline = true

# Disable the package module, hiding it from the prompt completely
[package]
disabled = true

[status]
format = '[\[$symbol$status$signal_name$maybe_int\]]($style) '
map_symbol = true
disabled = false
