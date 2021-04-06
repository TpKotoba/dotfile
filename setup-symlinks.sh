# Dotfiles
ln -s ~/.dotfile/tpkotoba.vimrc ~/.vimrc
ln -s ~/.dotfile/tpkotoba.gitconfig ~/.gitconfig

# ================================TYPORA================================
TyporaVersion=`snap list | grep typora | awk '{print $3}'`
TyporaPath=~/snap/typora/${TyporaVersion}/.config/Typora

ln -sf ~/.dotfile/tpkotoba.typoraprof ${TyporaPath}/profile.data
ln -sf ~/.dotfile/tpkotoba.typoraconf ${TyporaPath}/conf/conf.default.json

mv ./typora-monospace-theme/monospace.css ./typora-monospace-theme/monospace-dark.css ./typora-monospace-theme/monospace ${TyporaPath}/themes