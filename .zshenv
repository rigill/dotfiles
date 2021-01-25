up() {
  local filePath="$(readlink -f $1)"
  local targetPackage=~/repos/dunelm-web/packages/tests/integration/package.json
  local formattedPath="$(sed "s/\/home\(.*\)integration/\./" <<< $filePath)"
  local sedCommand="21 s/\.\(.*\)\"/${formattedPath//\//\\/} --ports 36560,65535\"/"
  git checkout master $targetPackage
  echo "Updating - $targetPackage with $formattedPath"
  sed -i $sedCommand $targetPackage
}
