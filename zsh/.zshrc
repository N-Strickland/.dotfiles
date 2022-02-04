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

if [ -x `whence -p gdircolors` ]; then alias dircolors='gdircolors'; fi
eval `dircolors --sh ~/config/.gruvbox.dircolors`

