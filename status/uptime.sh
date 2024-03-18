# Requires https://github.com/robhurring/tmux-uptime.
show_uptime() {
  local index=$1
  local icon="$(get_tmux_option "@bamboo_uptime_icon" "󰔟")"
  local color="$(get_tmux_option "@bamboo_uptime_color" "$thm_green")"
  local text="$(get_tmux_option "@bamboo_uptime_text" "#{uptime}")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
