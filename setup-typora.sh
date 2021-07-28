#!/bin/sh
# ==== TYPORA ====
TyporaVersion=`snap list | grep typora | awk '{print $3}'`
TyporaPath=~/snap/typora/current/.config/Typora
TyporaTheme=typora-theme-typorex

if [ -e ${TyporaPath} ]; then
    cp -f  ./typora/tpkotoba.typoraprof ${TyporaPath}/profile.data
    cp -f  ./typora/tpkotoba.typoraconf ${TyporaPath}/conf/conf.default.json
    cp -fr ./typora/${TyporaTheme} ${TyporaPath}/themes/
else
    echo "TyporaPath not found."
    exit 0
fi
