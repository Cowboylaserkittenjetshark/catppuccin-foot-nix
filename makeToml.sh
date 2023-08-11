#! /bin/sh
for theme in *.conf; do
  sed --regexp-extended 's|=\s*([^ ]*)|="\1"|' $theme > ${theme//.conf/.toml}
done