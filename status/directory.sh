show_directory() {
  local index icon color text module

  index=$1
  icon=$(get_tmux_option "@bamboo_directory_icon" "")
  color=$(get_tmux_option "@bamboo_directory_color" "$thm_pink")
  text=$(get_tmux_option "@bamboo_directory_text" "#{b:pane_current_path}")

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
