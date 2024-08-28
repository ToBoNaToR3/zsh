# allow a configuration per machine which is not included in git
ZSH_MACHINE_SPECIFIC=$HOME/.machine_specific.zshrc

if [ ! -f "$ZSH_MACHINE_SPECIFIC" ]; then
  echo "No machine specific config found in ${ZSH_MACHINE_SPECIFIC}."
  echo "# machine specific ZSH Configuration" > "$ZSH_MACHINE_SPECIFIC"
  echo "Created machine specific config file at $ZSH_MACHINE_SPECIFIC."
fi

source "$ZSH_MACHINE_SPECIFIC"
