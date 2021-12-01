foreach file (
  exports.zsh
  aliases.zsh
  mappings.zsh
  prompt.zsh
  plugins.zsh
) {
  source ./config/$file
}
unset file