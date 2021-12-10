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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
