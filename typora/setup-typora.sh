# ================================TYPORA================================
TyporaVersion=`snap list | grep typora | awk '{print $3}'`
TyporaPath=~/snap/typora/${TyporaVersion}/.config/Typora

if [ -e ${TyporaPath} ]; then
    echo "TyporaPath not found."
    exit 0
else
    cp -f ~/.dotfile/tpkotoba.typoraprof ${TyporaPath}/profile.data
    cp -f ~/.dotfile/tpkotoba.typoraconf ${TyporaPath}/conf/conf.default.json

    cp -f ./typora-monospace-theme/monospace.css ${TyporaPath}/monospace.css
    cp -f ./typora-monospace-theme/monospace-dark.css ${TyporaPath}/monospace-dark.css
    cp -f ./typora-monospace-theme/monospace ${TyporaPath}/monospace