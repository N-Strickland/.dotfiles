foreach file (
  prompt.zsh
  plugins.zsh
  exports.zsh
  aliases.zsh
  mappings.zsh
) {
  source $HOME/config/$file
}
unset file

