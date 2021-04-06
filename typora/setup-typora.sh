# ================================TYPORA================================
TyporaVersion=`snap list | grep typora | awk '{print $3}'`
TyporaPath=~/snap/typora/${TyporaVersion}/.config/Typora

if [ -e ${TyporaPath} ]; then
    cp -f ~/.dotfile/typora/tpkotoba.typoraprof ${TyporaPath}/profile.data
    cp -f ~/.dotfile/typora/tpkotoba.typoraconf ${TyporaPath}/conf/conf.default.json

    cp -f ~/.dotfile/typora/typora-monospace-theme/monospace.css ${TyporaPath}/themes/monospace.css
    cp -f ~/.dotfile/typora/typora-monospace-theme/monospace-dark.css ${TyporaPath}/themes/monospace-dark.css
    cp -fr ~/.dotfile/typora/typora-monospace-theme/monospace ${TyporaPath}/themes/monospace
else
    echo "TyporaPath not found."
    exit 0
fi