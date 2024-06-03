# Disable dock animation
defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -int 0;killall Dock
# Reset dock animation to default
defaults write com.apple.dock autohide-time-modifier -float 0.5
killall Dock
