up() {
  local filePath="$(readlink -f $1)"
  local targetPackage=~/repos/dunelm-web/packages/tests/integration/package.json
  local formattedPath="$(sed "s/\/home\(.*\)integration/\./" <<< $filePath)"
  local sedCommand="20 s/\.\(.*\)\"/${formattedPath//\//\\/}\"/"
  git checkout master $targetPackage
  echo "Updating - $targetPackage with $formattedPath"
  sed -i $sedCommand $targetPackage
}
