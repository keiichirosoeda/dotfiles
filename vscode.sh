#!/bin/sh

cat ./vscode/extensions | while read line
do
  /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension $line
done