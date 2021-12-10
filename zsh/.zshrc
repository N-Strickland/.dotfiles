foreach file (
  exports.zsh
  aliases.zsh
  mappings.zsh
  prompt.zsh
  plugins.zsh
) {
  source $HOME/config/$file
}
unset file

