show_user() {
  local index icon color text module

  index=$1
  icon=$(get_tmux_option "@bamboo_user_icon" "")
  color=$(get_tmux_option "@bamboo_user_color" "$thm_cyan")
  text=$(get_tmux_option "@bamboo_user_text" "#(whoami)")

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
